
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_GEN_CTRL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8726_link_reset(struct elink_phy *phy,
      struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P1(sc, "elink_8726_link_reset port %d\n", params->port);

 elink_cl45_write(sc, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL, 0x0001);
}
