
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_vars {scalar_t__ line_speed; int fault_detected; int duplex; } ;
struct elink_phy {int flags; scalar_t__ req_line_speed; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1x (struct bxe_softc*) ;
 int DUPLEX_FULL ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 scalar_t__ ELINK_DUAL_MEDIA (struct elink_params*) ;
 int ELINK_FLAGS_NOC ;
 int ELINK_FLAGS_SFP_NOT_APPROVED ;
 int ELINK_LOG_ID_OVER_CURRENT ;
 scalar_t__ ELINK_SPEED_1000 ;
 scalar_t__ ELINK_SPEED_10000 ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_LASI_TXSTAT ;
 int MDIO_PMA_REG_8073_SPEED_LINK_STATUS ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int MDIO_PMA_REG_8727_PCS_GP ;
 int MDIO_PMA_REG_M8051_MSGOUT_REG ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int SC_PATH (struct bxe_softc*) ;
 int elink_8727_handle_mod_abs (struct elink_phy*,struct elink_params*) ;
 int elink_8727_power_module (struct bxe_softc*,struct elink_phy*,int ) ;
 int elink_cb_event_log (struct bxe_softc*,int ,int) ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_ext_phy_resolve_fc (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_sfp_mask_fault (struct bxe_softc*,struct elink_phy*,int ,int ) ;
 int elink_sfp_set_transmitter (struct elink_params*,struct elink_phy*,int) ;

__attribute__((used)) static uint8_t elink_8727_read_status(struct elink_phy *phy,
     struct elink_params *params,
     struct elink_vars *vars)

{
 struct bxe_softc *sc = params->sc;
 uint8_t link_up = 0;
 uint16_t link_status = 0;
 uint16_t rx_alarm_status, lasi_ctrl, val1;


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL,
   &lasi_ctrl);
 if (!lasi_ctrl)
  return 0;


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT,
   &rx_alarm_status);
 vars->line_speed = 0;
 ELINK_DEBUG_P1(sc, "8727 RX_ALARM_STATUS  0x%x\n", rx_alarm_status);

 elink_sfp_mask_fault(sc, phy, MDIO_PMA_LASI_TXSTAT,
        MDIO_PMA_LASI_TXCTRL);

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);

 ELINK_DEBUG_P1(sc, "8727 LASI status 0x%x\n", val1);


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_M8051_MSGOUT_REG, &val1);




 if (!(phy->flags & ELINK_FLAGS_NOC) && !(rx_alarm_status & (1<<5))) {

  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_8727_GPIO_CTRL,
    &val1);

  if ((val1 & (1<<8)) == 0) {
   uint8_t oc_port = params->port;
   if (!CHIP_IS_E1x(sc))
    oc_port = SC_PATH(sc) + (params->port << 1);
   ELINK_DEBUG_P1(sc,
      "8727 Power fault has been detected on port %d\n",
      oc_port);
   elink_cb_event_log(sc, ELINK_LOG_ID_OVER_CURRENT, oc_port);







   elink_cl45_write(sc, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_LASI_RXCTRL, (1<<5));

   elink_cl45_read(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_PHY_IDENTIFIER, &val1);

   val1 |= (1<<8);
   elink_cl45_write(sc, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_PHY_IDENTIFIER, val1);

   elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_LASI_RXSTAT, &rx_alarm_status);
   elink_8727_power_module(params->sc, phy, 0);
   return 0;
  }
 }


 if (rx_alarm_status & (1<<5)) {
  elink_8727_handle_mod_abs(phy, params);

  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     ((1<<5) | (1<<2)));
 }

 if (!(phy->flags & ELINK_FLAGS_SFP_NOT_APPROVED)) {
  ELINK_DEBUG_P0(sc, "Enabling 8727 TX laser\n");
  elink_sfp_set_transmitter(params, phy, 1);
 } else {
  ELINK_DEBUG_P0(sc, "Tx is disabled\n");
  return 0;
 }

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_SPEED_LINK_STATUS, &link_status);




 if ((link_status & (1<<2)) && (!(link_status & (1<<15)))) {
  link_up = 1;
  vars->line_speed = ELINK_SPEED_10000;
  ELINK_DEBUG_P1(sc, "port %x: External link up in 10G\n",
      params->port);
 } else if ((link_status & (1<<0)) && (!(link_status & (1<<13)))) {
  link_up = 1;
  vars->line_speed = ELINK_SPEED_1000;
  ELINK_DEBUG_P1(sc, "port %x: External link up in 1G\n",
      params->port);
 } else {
  link_up = 0;
  ELINK_DEBUG_P1(sc, "port %x: External link is down\n",
      params->port);
 }


 if (vars->line_speed == ELINK_SPEED_10000) {
  elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);

  elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);

  if (val1 & (1<<0)) {
   vars->fault_detected = 1;
  }
 }

 if (link_up) {
  elink_ext_phy_resolve_fc(phy, params, vars);
  vars->duplex = DUPLEX_FULL;
  ELINK_DEBUG_P1(sc, "duplex = 0x%x\n", vars->duplex);
 }

 if ((ELINK_DUAL_MEDIA(params)) &&
     (phy->req_line_speed == ELINK_SPEED_1000)) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_GP, &val1);



  if (link_up)
   val1 &= ~(3<<10);
  else
   val1 |= (3<<10);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8727_PCS_GP, val1);
 }
 return link_up;
}
