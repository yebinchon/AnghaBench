
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8073_CHIP_REV ;
 int MDIO_PMA_REG_8073_SPEED_LINK_STATUS ;
 int MDIO_PMA_REG_8073_XAUI_WA ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;

__attribute__((used)) static elink_status_t elink_8073_xaui_wa(struct bxe_softc *sc, struct elink_phy *phy)
{
 uint16_t val, cnt, cnt1 ;

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_CHIP_REV, &val);

 if (val > 0) {

  return ELINK_STATUS_OK;
 }






 for (cnt = 0; cnt < 1000; cnt++) {
  elink_cl45_read(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8073_SPEED_LINK_STATUS,
    &val);




  if (!(val & (1<<14)) || !(val & (1<<13))) {
   ELINK_DEBUG_P0(sc, "XAUI work-around not required\n");
   return ELINK_STATUS_OK;
  } else if (!(val & (1<<15))) {
   ELINK_DEBUG_P0(sc, "bit 15 went off\n");





   for (cnt1 = 0; cnt1 < 1000; cnt1++) {
    elink_cl45_read(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8073_XAUI_WA, &val);
    if (val & (1<<15)) {
     ELINK_DEBUG_P0(sc,
       "XAUI workaround has completed\n");
     return ELINK_STATUS_OK;
     }
     DELAY(1000 * 3);
   }
   break;
  }
  DELAY(1000 * 3);
 }
 ELINK_DEBUG_P0(sc, "Warning: XAUI work-around timeout !!!\n");
 return ELINK_STATUS_ERROR;
}
