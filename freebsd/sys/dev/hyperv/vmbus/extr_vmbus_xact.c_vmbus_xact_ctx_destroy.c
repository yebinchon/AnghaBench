
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int dummy; } ;


 int vmbus_xact_ctx_free (struct vmbus_xact_ctx*) ;
 int vmbus_xact_ctx_orphan (struct vmbus_xact_ctx*) ;

void
vmbus_xact_ctx_destroy(struct vmbus_xact_ctx *ctx)
{

 vmbus_xact_ctx_orphan(ctx);
 vmbus_xact_ctx_free(ctx);
}
