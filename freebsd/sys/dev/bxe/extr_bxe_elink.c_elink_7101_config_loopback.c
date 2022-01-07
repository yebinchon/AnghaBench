
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_XS_DEVAD ;
 int MDIO_XS_SFX7101_XGXS_TEST1 ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_7101_config_loopback(struct elink_phy *phy,
           struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;

 elink_cl45_write(sc, phy,
    MDIO_XS_DEVAD, MDIO_XS_SFX7101_XGXS_TEST1, 0x100);
}
