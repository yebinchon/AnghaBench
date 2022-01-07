
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {scalar_t__ type; } ;
struct elink_params {int port; } ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int,int) ;
 int ELINK_LOG_ID_PHY_UNINITIALIZED ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE ;
 int elink_cb_event_log (struct bxe_softc*,int ,int ) ;
 int elink_cl22_read (struct bxe_softc*,struct elink_phy*,int ,int*) ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;

__attribute__((used)) static uint16_t elink_wait_reset_complete(struct bxe_softc *sc,
         struct elink_phy *phy,
         struct elink_params *params)
{
 uint16_t cnt, ctrl;

 for (cnt = 0; cnt < 1000; cnt++) {
  if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE)
   elink_cl22_read(sc, phy,
    MDIO_PMA_REG_CTRL, &ctrl);
  else
   elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_CTRL, &ctrl);
  if (!(ctrl & (1<<15)))
   break;
  DELAY(1000 * 1);
 }

 if (cnt == 1000)
  elink_cb_event_log(sc, ELINK_LOG_ID_PHY_UNINITIALIZED, params->port);


 ELINK_DEBUG_P2(sc, "control reg 0x%x (after %d ms)\n", ctrl, cnt);
 return cnt;
}
