
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bnxt_link_info {int link_up; scalar_t__ phy_link_status; } ;
struct bnxt_softc {struct bnxt_link_info link_info; } ;


 scalar_t__ HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK ;
 int bnxt_hwrm_port_phy_qcfg (struct bnxt_softc*) ;
 int bnxt_report_link (struct bnxt_softc*) ;

__attribute__((used)) static int
bnxt_update_link(struct bnxt_softc *softc, bool chng_link_state)
{
 struct bnxt_link_info *link_info = &softc->link_info;
 uint8_t link_up = link_info->link_up;
 int rc = 0;

 rc = bnxt_hwrm_port_phy_qcfg(softc);
 if (rc)
  goto exit;


 if (chng_link_state) {
  if (link_info->phy_link_status ==
      HWRM_PORT_PHY_QCFG_OUTPUT_LINK_LINK)
   link_info->link_up = 1;
  else
   link_info->link_up = 0;
  if (link_up != link_info->link_up)
   bnxt_report_link(softc);
 } else {

  link_info->link_up = 0;
 }

exit:
 return rc;
}
