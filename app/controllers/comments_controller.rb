class CommentsController < ApplicationController
  def create
   comment=Comment.new
   comment.content =params[:content]
   comment.post_id =params[:post_id]
   comment.save
   
   redirect_to :back
  end

  def destroy
    @destroy_comment = Post.find(params[:post_id]).comments.find(params[:comment_id])
   @destroy_comment.destroy
   redirect_to :back
  end
end
