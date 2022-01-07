
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_DIGITAL4_MISC5 ;
 int MDIO_WC_REG_EEE_COMBO_CONTROL0 ;
 int elink_cl45_read_or_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_warpcore_set_lpi_passthrough(struct elink_phy *phy,
            struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;

 ELINK_DEBUG_P0(sc, "Configure WC for LPI pass through\n");
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_EEE_COMBO_CONTROL0, 0x7c);
 elink_cl45_read_or_write(sc, phy, MDIO_WC_DEVAD,
     MDIO_WC_REG_DIGITAL4_MISC5, 0xc000);
}
