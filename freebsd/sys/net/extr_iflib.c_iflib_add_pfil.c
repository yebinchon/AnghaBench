
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pfil_head_args {int pa_headname; int pa_type; int pa_flags; int pa_version; } ;
struct pfil_head {int dummy; } ;
typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_8__ {TYPE_2__* ifc_rxqs; TYPE_1__* ifc_ifp; } ;
struct TYPE_7__ {struct pfil_head* pfil; } ;
struct TYPE_6__ {int if_xname; } ;


 int NRXQSETS (TYPE_3__*) ;
 int PFIL_IN ;
 int PFIL_TYPE_ETHERNET ;
 int PFIL_VERSION ;
 struct pfil_head* pfil_head_register (struct pfil_head_args*) ;

__attribute__((used)) static void
iflib_add_pfil(if_ctx_t ctx)
{
 struct pfil_head *pfil;
 struct pfil_head_args pa;
 iflib_rxq_t rxq;
 int i;

 pa.pa_version = PFIL_VERSION;
 pa.pa_flags = PFIL_IN;
 pa.pa_type = PFIL_TYPE_ETHERNET;
 pa.pa_headname = ctx->ifc_ifp->if_xname;
 pfil = pfil_head_register(&pa);

 for (i = 0, rxq = ctx->ifc_rxqs; i < NRXQSETS(ctx); i++, rxq++) {
  rxq->pfil = pfil;
 }
}
