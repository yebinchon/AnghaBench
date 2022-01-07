
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;






 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE ;
 int MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE_DEFAULT ;
 int MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE_SFP_DAC ;
 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int ,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_get_warpcore_lane (struct elink_phy*,struct elink_params*) ;
 int elink_warpcore_reset_lane (struct bxe_softc*,struct elink_phy*,int) ;

__attribute__((used)) static void elink_warpcore_set_limiting_mode(struct elink_params *params,
          struct elink_phy *phy,
          uint16_t edc_mode)
{
 uint16_t val = 0;
 uint16_t mode = MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE_DEFAULT;
 struct bxe_softc *sc = params->sc;

 uint8_t lane = elink_get_warpcore_lane(phy, params);

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE, &val);
 val &= ~(0xf << (lane << 2));

 switch (edc_mode) {
 case 129:
 case 130:
  mode = MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE_DEFAULT;
  break;
 case 128:
 case 131:
  mode = MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE_SFP_DAC;
  break;
 default:
  break;
 }

 val |= (mode << (lane << 2));
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE, val);

 elink_cl45_read(sc, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_UC_INFO_B1_FIRMWARE_MODE, &val);


 elink_warpcore_reset_lane(sc, phy, 1);
 elink_warpcore_reset_lane(sc, phy, 0);

}
