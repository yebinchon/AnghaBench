
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grouptask {int * gt_taskqueue; } ;
typedef TYPE_1__* if_ctx_t ;
struct TYPE_3__ {struct grouptask ifc_admin_task; } ;


 int GROUPTASK_ENQUEUE (struct grouptask*) ;
 int MPASS (int) ;

void
iflib_admin_intr_deferred(if_ctx_t ctx)
{







 GROUPTASK_ENQUEUE(&ctx->ifc_admin_task);
}
