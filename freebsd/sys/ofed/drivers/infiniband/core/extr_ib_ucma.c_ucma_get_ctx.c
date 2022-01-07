
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int dummy; } ;
struct ucma_context {int ref; scalar_t__ closing; } ;


 int EIO ;
 struct ucma_context* ERR_PTR (int ) ;
 int IS_ERR (struct ucma_context*) ;
 struct ucma_context* _ucma_find_context (int,struct ucma_file*) ;
 int atomic_inc (int *) ;
 int mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ucma_context *ucma_get_ctx(struct ucma_file *file, int id)
{
 struct ucma_context *ctx;

 mutex_lock(&mut);
 ctx = _ucma_find_context(id, file);
 if (!IS_ERR(ctx)) {
  if (ctx->closing)
   ctx = ERR_PTR(-EIO);
  else
   atomic_inc(&ctx->ref);
 }
 mutex_unlock(&mut);
 return ctx;
}
