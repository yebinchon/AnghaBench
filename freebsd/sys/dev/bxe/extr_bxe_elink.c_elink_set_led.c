
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct elink_vars {int link_up; } ;
struct elink_params {size_t port; int hw_led_mode; int feature_config_flags; int num_phys; TYPE_1__* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;
struct TYPE_2__ {int type; int (* set_link_led ) (TYPE_1__*,struct elink_params*,size_t) ;} ;


 int CHIP_IS_E1 (struct bxe_softc*) ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 int CHIP_IS_E2 (struct bxe_softc*) ;
 int CHIP_IS_E3 (struct bxe_softc*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,size_t) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 size_t ELINK_EXT_PHY1 ;
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC ;




 size_t ELINK_MAX_PHYS ;
 int ELINK_SINGLE_MEDIA_DIRECT (struct elink_params*) ;
 int ELINK_SPEED_10 ;
 int ELINK_SPEED_100 ;
 int ELINK_SPEED_1000 ;
 int ELINK_SPEED_10000 ;
 int ELINK_SPEED_2500 ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int EMAC_LED_1000MB_OVERRIDE ;
 int EMAC_LED_100MB_OVERRIDE ;
 int EMAC_LED_10MB_OVERRIDE ;
 int EMAC_LED_OVERRIDE ;
 int EMAC_REG_EMAC_LED ;
 int GRCBASE_EMAC0 ;
 int GRCBASE_EMAC1 ;
 int LED_BLINK_RATE_VAL_E1X_E2 ;
 int LED_BLINK_RATE_VAL_E3 ;
 size_t NIG_REG_LED_10G_P0 ;
 size_t NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0 ;
 size_t NIG_REG_LED_CONTROL_BLINK_RATE_P0 ;
 size_t NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0 ;
 size_t NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0 ;
 size_t NIG_REG_LED_CONTROL_TRAFFIC_P0 ;
 size_t NIG_REG_LED_MODE_P0 ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722 ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727 ;
 int REG_WR (struct bxe_softc*,size_t,int) ;
 int SHARED_HW_CFG_LED_EXTPHY2 ;
 int SHARED_HW_CFG_LED_MAC1 ;
 int SHARED_HW_CFG_LED_MODE_SHIFT ;
 int SHARED_HW_CFG_LED_PHY1 ;
 int elink_cb_reg_read (struct bxe_softc*,int) ;
 int elink_cb_reg_write (struct bxe_softc*,int,int) ;
 int stub1 (TYPE_1__*,struct elink_params*,size_t) ;

elink_status_t elink_set_led(struct elink_params *params,
    struct elink_vars *vars, uint8_t mode, uint32_t speed)
{
 uint8_t port = params->port;
 uint16_t hw_led_mode = params->hw_led_mode;
 elink_status_t rc = ELINK_STATUS_OK;
 uint8_t phy_idx;
 uint32_t tmp;
 uint32_t emac_base = port ? GRCBASE_EMAC1 : GRCBASE_EMAC0;
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P2(sc, "elink_set_led: port %x, mode %d\n", port, mode);
 ELINK_DEBUG_P2(sc, "speed 0x%x, hw_led_mode 0x%x\n",
   speed, hw_led_mode);

 for (phy_idx = ELINK_EXT_PHY1; phy_idx < ELINK_MAX_PHYS; phy_idx++) {
  if (params->phy[phy_idx].set_link_led) {
   params->phy[phy_idx].set_link_led(
    &params->phy[phy_idx], params, mode);
  }
 }






 switch (mode) {
 case 131:
 case 130:
  REG_WR(sc, NIG_REG_LED_10G_P0 + port*4, 0);
  REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4,
         SHARED_HW_CFG_LED_MAC1);

  tmp = elink_cb_reg_read(sc, emac_base + EMAC_REG_EMAC_LED);
  if (params->phy[ELINK_EXT_PHY1].type ==
   PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE)
   tmp &= ~(EMAC_LED_1000MB_OVERRIDE |
    EMAC_LED_100MB_OVERRIDE |
    EMAC_LED_10MB_OVERRIDE);
  else
   tmp |= EMAC_LED_OVERRIDE;

  elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_LED, tmp);
  break;

 case 128:



  if (!vars->link_up)
   break;
 case 129:
  if (((params->phy[ELINK_EXT_PHY1].type ==
     PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8727) ||
    (params->phy[ELINK_EXT_PHY1].type ==
     PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM8722)) &&
      CHIP_IS_E2(sc) && params->num_phys == 2) {

   if (mode == 129 ||
    speed == ELINK_SPEED_10000){
    REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4, 0);
    REG_WR(sc, NIG_REG_LED_10G_P0 + port*4, 1);

    tmp = elink_cb_reg_read(sc, emac_base + EMAC_REG_EMAC_LED);
    elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_LED,
     (tmp | EMAC_LED_OVERRIDE));





    if (mode == 129)
     return rc;
   }
  } else if (ELINK_SINGLE_MEDIA_DIRECT(params)) {



   if ((!CHIP_IS_E3(sc)) ||
       (CHIP_IS_E3(sc) &&
        mode == 129))
    REG_WR(sc, NIG_REG_LED_10G_P0 + port*4, 1);

   if (CHIP_IS_E1x(sc) ||
       CHIP_IS_E2(sc) ||
       (mode == 129))
    REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4, 0);
   else
    REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4,
           hw_led_mode);
  } else if ((params->phy[ELINK_EXT_PHY1].type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE) &&
      (mode == 129)) {
   REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4, 0);
   tmp = elink_cb_reg_read(sc, emac_base + EMAC_REG_EMAC_LED);
   elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_LED, tmp |
    EMAC_LED_OVERRIDE | EMAC_LED_1000MB_OVERRIDE);



   break;
  } else {
   uint32_t nig_led_mode = ((params->hw_led_mode <<
          SHARED_HW_CFG_LED_MODE_SHIFT) ==
         SHARED_HW_CFG_LED_EXTPHY2) ?
    (SHARED_HW_CFG_LED_PHY1 >>
     SHARED_HW_CFG_LED_MODE_SHIFT) : hw_led_mode;
   REG_WR(sc, NIG_REG_LED_MODE_P0 + port*4,
          nig_led_mode);
  }

  REG_WR(sc, NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0 + port*4, 0);

  if (CHIP_IS_E3(sc))
   REG_WR(sc, NIG_REG_LED_CONTROL_BLINK_RATE_P0 + port*4,
          LED_BLINK_RATE_VAL_E3);
  else
   REG_WR(sc, NIG_REG_LED_CONTROL_BLINK_RATE_P0 + port*4,
          LED_BLINK_RATE_VAL_E1X_E2);
  REG_WR(sc, NIG_REG_LED_CONTROL_BLINK_RATE_ENA_P0 +
         port*4, 1);
  tmp = elink_cb_reg_read(sc, emac_base + EMAC_REG_EMAC_LED);
  elink_cb_reg_write(sc, emac_base + EMAC_REG_EMAC_LED,
   (tmp & (~EMAC_LED_OVERRIDE)));

  if (CHIP_IS_E1(sc) &&
      ((speed == ELINK_SPEED_2500) ||
       (speed == ELINK_SPEED_1000) ||
       (speed == ELINK_SPEED_100) ||
       (speed == ELINK_SPEED_10))) {

   REG_WR(sc, NIG_REG_LED_CONTROL_OVERRIDE_TRAFFIC_P0
          + port*4, 1);
   REG_WR(sc, NIG_REG_LED_CONTROL_TRAFFIC_P0 +
          port*4, 0);
   REG_WR(sc, NIG_REG_LED_CONTROL_BLINK_TRAFFIC_P0 +
          port*4, 1);
  }
  break;

 default:
  rc = ELINK_STATUS_ERROR;
  ELINK_DEBUG_P1(sc, "elink_set_led: Invalid led mode %d\n",
    mode);
  break;
 }
 return rc;

}
