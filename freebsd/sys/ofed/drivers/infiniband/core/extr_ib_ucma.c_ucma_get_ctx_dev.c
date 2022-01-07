
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucma_file {int dummy; } ;
struct ucma_context {TYPE_1__* cm_id; } ;
struct TYPE_2__ {int device; } ;


 int EINVAL ;
 struct ucma_context* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ucma_context*) ;
 struct ucma_context* ucma_get_ctx (struct ucma_file*,int) ;
 int ucma_put_ctx (struct ucma_context*) ;

__attribute__((used)) static struct ucma_context *ucma_get_ctx_dev(struct ucma_file *file, int id)
{
 struct ucma_context *ctx = ucma_get_ctx(file, id);

 if (IS_ERR(ctx))
  return ctx;
 if (!ctx->cm_id->device) {
  ucma_put_ctx(ctx);
  return ERR_PTR(-EINVAL);
 }
 return ctx;
}
