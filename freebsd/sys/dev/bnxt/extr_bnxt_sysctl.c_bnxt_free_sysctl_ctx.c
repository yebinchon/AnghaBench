
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_softc {int * flow_ctrl_oid; int flow_ctrl_ctx; int * hw_lro_oid; int hw_lro_ctx; TYPE_2__* nvm_info; TYPE_1__* ver_info; int * hw_stats_oid; int hw_stats; } ;
struct TYPE_4__ {int * nvm_oid; int nvm_ctx; } ;
struct TYPE_3__ {int * ver_oid; int ver_ctx; } ;


 scalar_t__ BNXT_PF (struct bnxt_softc*) ;
 int sysctl_ctx_free (int *) ;

int
bnxt_free_sysctl_ctx(struct bnxt_softc *softc)
{
 int orc;
 int rc = 0;

 if (softc->hw_stats_oid != ((void*)0)) {
  orc = sysctl_ctx_free(&softc->hw_stats);
  if (orc)
   rc = orc;
  else
   softc->hw_stats_oid = ((void*)0);
 }
 if (softc->ver_info->ver_oid != ((void*)0)) {
  orc = sysctl_ctx_free(&softc->ver_info->ver_ctx);
  if (orc)
   rc = orc;
  else
   softc->ver_info->ver_oid = ((void*)0);
 }
 if (BNXT_PF(softc) && softc->nvm_info->nvm_oid != ((void*)0)) {
  orc = sysctl_ctx_free(&softc->nvm_info->nvm_ctx);
  if (orc)
   rc = orc;
  else
   softc->nvm_info->nvm_oid = ((void*)0);
 }
 if (softc->hw_lro_oid != ((void*)0)) {
  orc = sysctl_ctx_free(&softc->hw_lro_ctx);
  if (orc)
   rc = orc;
  else
   softc->hw_lro_oid = ((void*)0);
 }

 if (softc->flow_ctrl_oid != ((void*)0)) {
  orc = sysctl_ctx_free(&softc->flow_ctrl_ctx);
  if (orc)
   rc = orc;
  else
   softc->flow_ctrl_oid = ((void*)0);
 }

 return rc;
}
