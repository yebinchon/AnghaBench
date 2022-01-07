
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int ctx_list; } ;
struct ucma_context {scalar_t__ id; int list; struct ucma_file* file; int mc_list; int comp; int ref; int close_work; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int) ;
 int ctx_idr ;
 scalar_t__ idr_alloc (int *,struct ucma_context*,int ,int ,int ) ;
 int init_completion (int *) ;
 int kfree (struct ucma_context*) ;
 struct ucma_context* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ucma_close_id ;

__attribute__((used)) static struct ucma_context *ucma_alloc_ctx(struct ucma_file *file)
{
 struct ucma_context *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 INIT_WORK(&ctx->close_work, ucma_close_id);
 atomic_set(&ctx->ref, 1);
 init_completion(&ctx->comp);
 INIT_LIST_HEAD(&ctx->mc_list);
 ctx->file = file;

 mutex_lock(&mut);
 ctx->id = idr_alloc(&ctx_idr, ctx, 0, 0, GFP_KERNEL);
 mutex_unlock(&mut);
 if (ctx->id < 0)
  goto error;

 list_add_tail(&ctx->list, &file->ctx_list);
 return ctx;

error:
 kfree(ctx);
 return ((void*)0);
}
