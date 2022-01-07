
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct elink_phy {int dummy; } ;
struct elink_params {int feature_config_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_FEATURE_CONFIG_BC_SUPPORTS_SFP_TX_DISABLED ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_TX_DISABLE ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,scalar_t__) ;

__attribute__((used)) static void elink_set_disable_pmd_transmit(struct elink_params *params,
        struct elink_phy *phy,
        uint8_t pmd_dis)
{
 struct bxe_softc *sc = params->sc;



 if (pmd_dis) {
  if (params->feature_config_flags &
       ELINK_FEATURE_CONFIG_BC_SUPPORTS_SFP_TX_DISABLED) {
   ELINK_DEBUG_P0(sc, "Disabling PMD transmitter\n");
  } else {
   ELINK_DEBUG_P0(sc, "NOT disabling PMD transmitter\n");
   return;
  }
 } else
  ELINK_DEBUG_P0(sc, "Enabling PMD transmitter\n");
 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_TX_DISABLE, pmd_dis);
}
