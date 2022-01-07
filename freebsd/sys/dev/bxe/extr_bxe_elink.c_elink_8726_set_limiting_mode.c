
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,scalar_t__) ;
 scalar_t__ ELINK_EDC_MODE_LIMITING ;
 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_LRM_MODE ;
 int MDIO_PMA_REG_MISC_CTRL0 ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,scalar_t__*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static elink_status_t elink_8726_set_limiting_mode(struct bxe_softc *sc,
     struct elink_phy *phy,
     uint16_t edc_mode)
{
 uint16_t cur_limiting_mode;

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2,
   &cur_limiting_mode);
 ELINK_DEBUG_P1(sc, "Current Limiting mode is 0x%x\n",
   cur_limiting_mode);

 if (edc_mode == ELINK_EDC_MODE_LIMITING) {
  ELINK_DEBUG_P0(sc, "Setting LIMITING MODE\n");
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_ROM_VER2,
     ELINK_EDC_MODE_LIMITING);
 } else {

  ELINK_DEBUG_P0(sc, "Setting LRM MODE\n");




  if (cur_limiting_mode != ELINK_EDC_MODE_LIMITING)
   return ELINK_STATUS_OK;

  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_LRM_MODE,
     0);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_ROM_VER2,
     0x128);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_MISC_CTRL0,
     0x4008);
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_LRM_MODE,
     0xaaaa);
 }
 return ELINK_STATUS_OK;
}
