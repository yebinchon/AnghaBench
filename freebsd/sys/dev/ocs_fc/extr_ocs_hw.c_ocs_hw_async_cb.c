
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int os; } ;
typedef TYPE_1__ ocs_hw_t ;
struct TYPE_7__ {int arg; int (* callback ) (TYPE_1__*,int ,int *,int ) ;} ;
typedef TYPE_2__ ocs_hw_async_call_ctx_t ;
typedef int int32_t ;


 int ocs_free (int ,TYPE_2__*,int) ;
 int stub1 (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static void
ocs_hw_async_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 ocs_hw_async_call_ctx_t *ctx = arg;

 if (ctx != ((void*)0)) {
  if (ctx->callback != ((void*)0)) {
   (*ctx->callback)(hw, status, mqe, ctx->arg);
  }
  ocs_free(hw->os, ctx, sizeof(*ctx));
 }
}
