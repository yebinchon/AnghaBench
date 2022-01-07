
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {int ifc_vflr_task; } ;


 int GROUPTASK_ENQUEUE (int *) ;

void
iflib_iov_intr_deferred(if_ctx_t ctx)
{

 GROUPTASK_ENQUEUE(&ctx->ifc_vflr_task);
}
