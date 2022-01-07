
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_vars {scalar_t__ line_speed; int fault_detected; int duplex; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DUPLEX_FULL ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 int ELINK_DEBUG_P3 (struct bxe_softc*,char*,int,int,int) ;
 scalar_t__ ELINK_SPEED_1000 ;
 scalar_t__ ELINK_SPEED_10000 ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_LINK_STATUS ;
 int MDIO_PCS_DEVAD ;
 int MDIO_PCS_REG_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_LASI_TXSTAT ;
 int MDIO_PMA_REG_RX_SD ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_ext_phy_resolve_fc (struct elink_phy*,struct elink_params*,struct elink_vars*) ;
 int elink_sfp_mask_fault (struct bxe_softc*,struct elink_phy*,int ,int ) ;

__attribute__((used)) static uint8_t elink_8706_8726_read_status(struct elink_phy *phy,
          struct elink_params *params,
          struct elink_vars *vars)
{
 uint8_t link_up = 0;
 uint16_t val1, val2, rx_sd, pcs_status;
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P0(sc, "XGXS 8706/8726\n");

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

 elink_sfp_mask_fault(sc, phy, MDIO_PMA_LASI_TXSTAT,
        MDIO_PMA_LASI_TXCTRL);


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
 ELINK_DEBUG_P2(sc, "8706/8726 LASI status 0x%x--> 0x%x\n", val1, val2);

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_RX_SD, &rx_sd);
 elink_cl45_read(sc, phy,
   MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &pcs_status);
 elink_cl45_read(sc, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);
 elink_cl45_read(sc, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);

 ELINK_DEBUG_P3(sc, "8706/8726 rx_sd 0x%x pcs_status 0x%x 1Gbps"
   " link_status 0x%x\n", rx_sd, pcs_status, val2);



 link_up = ((rx_sd & pcs_status & 0x1) || (val2 & (1<<1)));
 if (link_up) {
  if (val2 & (1<<1))
   vars->line_speed = ELINK_SPEED_1000;
  else
   vars->line_speed = ELINK_SPEED_10000;
  elink_ext_phy_resolve_fc(phy, params, vars);
  vars->duplex = DUPLEX_FULL;
 }


 if (vars->line_speed == ELINK_SPEED_10000) {
  elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);
  elink_cl45_read(sc, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);
  if (val1 & (1<<0))
   vars->fault_detected = 1;
 }

 return link_up;
}
