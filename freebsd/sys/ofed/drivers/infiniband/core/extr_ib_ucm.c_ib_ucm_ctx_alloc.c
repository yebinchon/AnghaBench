
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_file {int ctxs; } ;
struct ib_ucm_context {scalar_t__ id; int file_list; int events; struct ib_ucm_file* file; int comp; int ref; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int ctx_id_mutex ;
 int ctx_id_table ;
 scalar_t__ idr_alloc (int *,struct ib_ucm_context*,int ,int ,int ) ;
 int init_completion (int *) ;
 int kfree (struct ib_ucm_context*) ;
 struct ib_ucm_context* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ib_ucm_context *ib_ucm_ctx_alloc(struct ib_ucm_file *file)
{
 struct ib_ucm_context *ctx;

 ctx = kzalloc(sizeof *ctx, GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 atomic_set(&ctx->ref, 1);
 init_completion(&ctx->comp);
 ctx->file = file;
 INIT_LIST_HEAD(&ctx->events);

 mutex_lock(&ctx_id_mutex);
 ctx->id = idr_alloc(&ctx_id_table, ctx, 0, 0, GFP_KERNEL);
 mutex_unlock(&ctx_id_mutex);
 if (ctx->id < 0)
  goto error;

 list_add_tail(&ctx->file_list, &file->ctxs);
 return ctx;

error:
 kfree(ctx);
 return ((void*)0);
}
