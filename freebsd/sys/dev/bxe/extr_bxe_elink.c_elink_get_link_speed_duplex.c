
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_vars {int link_status; int phy_link_up; int line_speed; int duplex; int mac_type; int flow_ctrl; } ;
struct elink_phy {scalar_t__ req_line_speed; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DUPLEX_FULL ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 int ELINK_FLOW_CTRL_NONE ;
 int ELINK_LINK_1000TFD ;
 int ELINK_LINK_1000THD ;
 int ELINK_LINK_100TXFD ;
 int ELINK_LINK_100TXHD ;
 int ELINK_LINK_10GTFD ;
 int ELINK_LINK_10TFD ;
 int ELINK_LINK_10THD ;
 int ELINK_LINK_20GTFD ;
 int ELINK_LINK_2500TFD ;
 int ELINK_LINK_2500THD ;
 int ELINK_MAC_TYPE_NONE ;
 int ELINK_SPEED_10 ;
 int ELINK_SPEED_100 ;
 int ELINK_SPEED_1000 ;
 int ELINK_SPEED_10000 ;
 int ELINK_SPEED_20000 ;
 int ELINK_SPEED_2500 ;
 scalar_t__ ELINK_SPEED_AUTO_NEG ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int LINK_STATUS_AUTO_NEGOTIATE_ENABLED ;
 int LINK_STATUS_LINK_UP ;

__attribute__((used)) static elink_status_t elink_get_link_speed_duplex(struct elink_phy *phy,
         struct elink_params *params,
          struct elink_vars *vars,
          uint16_t is_link_up,
          uint16_t speed_mask,
          uint16_t is_duplex)
{
 struct bxe_softc *sc = params->sc;
 if (phy->req_line_speed == ELINK_SPEED_AUTO_NEG)
  vars->link_status |= LINK_STATUS_AUTO_NEGOTIATE_ENABLED;
 if (is_link_up) {
  ELINK_DEBUG_P0(sc, "phy link up\n");

  vars->phy_link_up = 1;
  vars->link_status |= LINK_STATUS_LINK_UP;

  switch (speed_mask) {
  case 135:
   vars->line_speed = ELINK_SPEED_10;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= ELINK_LINK_10TFD;
   else
    vars->link_status |= ELINK_LINK_10THD;
   break;

  case 142:
   vars->line_speed = ELINK_SPEED_100;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= ELINK_LINK_100TXFD;
   else
    vars->link_status |= ELINK_LINK_100TXHD;
   break;

  case 134:
  case 133:
   vars->line_speed = ELINK_SPEED_1000;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= ELINK_LINK_1000TFD;
   else
    vars->link_status |= ELINK_LINK_1000THD;
   break;

  case 130:
   vars->line_speed = ELINK_SPEED_2500;
   if (is_duplex == DUPLEX_FULL)
    vars->link_status |= ELINK_LINK_2500TFD;
   else
    vars->link_status |= ELINK_LINK_2500THD;
   break;

  case 129:
  case 128:
   ELINK_DEBUG_P1(sc,
     "link speed unsupported  gp_status 0x%x\n",
      speed_mask);
   return ELINK_STATUS_ERROR;

  case 138:
  case 140:
  case 141:
  case 139:
  case 137:
  case 136:
   vars->line_speed = ELINK_SPEED_10000;
   vars->link_status |= ELINK_LINK_10GTFD;
   break;
  case 132:
  case 131:
   vars->line_speed = ELINK_SPEED_20000;
   vars->link_status |= ELINK_LINK_20GTFD;
   break;
  default:
   ELINK_DEBUG_P1(sc,
      "link speed unsupported gp_status 0x%x\n",
      speed_mask);
   return ELINK_STATUS_ERROR;
  }
 } else {
  ELINK_DEBUG_P0(sc, "phy link down\n");

  vars->phy_link_up = 0;

  vars->duplex = DUPLEX_FULL;
  vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
  vars->mac_type = ELINK_MAC_TYPE_NONE;
 }
 ELINK_DEBUG_P2(sc, " in elink_get_link_speed_duplex vars->link_status = %x, vars->duplex = %x\n",
   vars->link_status, vars->duplex);
 ELINK_DEBUG_P2(sc, " phy_link_up %x line_speed %d\n",
      vars->phy_link_up, vars->line_speed);
 return ELINK_STATUS_OK;
}
