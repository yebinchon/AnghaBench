
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int ELINK_STATUS_OK ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8073_CHIP_REV ;
 int MDIO_PMA_REG_ROM_VER2 ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;

__attribute__((used)) static elink_status_t elink_8073_is_snr_needed(struct bxe_softc *sc, struct elink_phy *phy)
{

 uint16_t val;


 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_CHIP_REV, &val);

 if (val != 1) {

  return ELINK_STATUS_OK;
 }

 elink_cl45_read(sc, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_ROM_VER2, &val);


 if (val != 0x102)
  return ELINK_STATUS_OK;

 return 1;
}
