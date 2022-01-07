
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct elink_vars {int phy_flags; int link_up; int link_status; int periodic_flags; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P3 (struct bxe_softc*,char*,int,int,int) ;
 int ELINK_LED_MODE_OFF ;
 int ELINK_LED_MODE_OPER ;
 int ELINK_PERIODIC_FLAGS_LINK_EVENT ;
 int ELINK_SPEED_10000 ;
 int LINK_STATUS_LINK_UP ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;

 int PHY_PHYSICAL_LINK_FLAG ;

 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_cb_notify_link_changed (struct bxe_softc*) ;
 int elink_set_led (struct elink_params*,struct elink_vars*,int,int ) ;
 int elink_sync_link (struct elink_params*,struct elink_vars*) ;
 int elink_update_mng (struct elink_params*,int) ;

__attribute__((used)) static uint8_t elink_analyze_link_error(struct elink_params *params,
        struct elink_vars *vars, uint32_t status,
        uint32_t phy_flag, uint32_t link_flag, uint8_t notify)
{
 struct bxe_softc *sc = params->sc;

 uint8_t led_mode;
 uint32_t old_status = (vars->phy_flags & phy_flag) ? 1 : 0;

 if ((status ^ old_status) == 0)
  return 0;


 switch (phy_flag) {
 case 129:
  ELINK_DEBUG_P0(sc, "Analyze Remote Fault\n");
  break;
 case 128:
  ELINK_DEBUG_P0(sc, "Analyze TX Fault\n");
  break;
 default:
  ELINK_DEBUG_P0(sc, "Analyze UNKNOWN\n");
 }
 ELINK_DEBUG_P3(sc, "Link changed:[%x %x]->%x\n", vars->link_up,
    old_status, status);


 if ((vars->phy_flags & PHY_PHYSICAL_LINK_FLAG) == 0)
  return 1;




 if (status) {
  vars->link_status &= ~LINK_STATUS_LINK_UP;
  vars->link_status |= link_flag;
  vars->link_up = 0;
  vars->phy_flags |= phy_flag;


  REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 1);



  led_mode = ELINK_LED_MODE_OFF;
 } else {
  vars->link_status |= LINK_STATUS_LINK_UP;
  vars->link_status &= ~link_flag;
  vars->link_up = 1;
  vars->phy_flags &= ~phy_flag;
  led_mode = ELINK_LED_MODE_OPER;


  REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
 }
 elink_sync_link(params, vars);

 elink_set_led(params, vars, led_mode, ELINK_SPEED_10000);


 elink_update_mng(params, vars->link_status);


 vars->periodic_flags |= ELINK_PERIODIC_FLAGS_LINK_EVENT;
 if (notify)
  elink_cb_notify_link_changed(sc);

 return 1;
}
