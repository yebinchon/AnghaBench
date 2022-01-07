
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct bnxt_softc {int flow_ctrl_ctx; struct sysctl_oid* flow_ctrl_oid; } ;


 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int ENOMEM ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct bnxt_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int bnxt_flow_ctrl_autoneg ;
 int bnxt_flow_ctrl_rx ;
 int bnxt_flow_ctrl_tx ;

int
bnxt_create_pause_fc_sysctls(struct bnxt_softc *softc)
{
 struct sysctl_oid *oid = softc->flow_ctrl_oid;

 if (!oid)
  return ENOMEM;

 SYSCTL_ADD_PROC(&softc->flow_ctrl_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "tx", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_flow_ctrl_tx, "A",
   "Enable or Disable Tx Flow Ctrl: 0 / 1");

 SYSCTL_ADD_PROC(&softc->flow_ctrl_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "rx", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_flow_ctrl_rx, "A",
   "Enable or Disable Tx Flow Ctrl: 0 / 1");

 SYSCTL_ADD_PROC(&softc->flow_ctrl_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
   "autoneg", CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0,
   bnxt_flow_ctrl_autoneg, "A",
   "Enable or Disable Autoneg Flow Ctrl: 0 / 1");

 return 0;
}
