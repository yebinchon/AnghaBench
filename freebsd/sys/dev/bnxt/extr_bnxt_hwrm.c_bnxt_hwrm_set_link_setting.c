
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwrm_port_phy_cfg_input {int member_0; } ;
struct TYPE_3__ {scalar_t__ autoneg; } ;
struct TYPE_4__ {TYPE_1__ flow_ctrl; } ;
struct bnxt_softc {int flags; TYPE_2__ link_info; } ;
typedef int req ;


 int BNXT_FLAG_NPAR ;
 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int ENOTSUP ;
 int HWRM_PORT_PHY_CFG ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*,int ) ;
 int bnxt_hwrm_set_eee (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_set_link_common (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_hwrm_set_pause_common (struct bnxt_softc*,struct hwrm_port_phy_cfg_input*) ;
 int bnxt_report_link (struct bnxt_softc*) ;

int
bnxt_hwrm_set_link_setting(struct bnxt_softc *softc, bool set_pause,
    bool set_eee, bool set_link)
{
 struct hwrm_port_phy_cfg_input req = {0};
 int rc;

 if (softc->flags & BNXT_FLAG_NPAR)
  return ENOTSUP;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_PORT_PHY_CFG);

 if (set_pause) {
  bnxt_hwrm_set_pause_common(softc, &req);

  if (softc->link_info.flow_ctrl.autoneg)
   set_link = 1;
 }

 if (set_link)
  bnxt_hwrm_set_link_common(softc, &req);

 if (set_eee)
  bnxt_hwrm_set_eee(softc, &req);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));

 if (!rc) {
  if (set_pause) {




   if (!softc->link_info.flow_ctrl.autoneg)
    bnxt_report_link(softc);
  }
 }
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
