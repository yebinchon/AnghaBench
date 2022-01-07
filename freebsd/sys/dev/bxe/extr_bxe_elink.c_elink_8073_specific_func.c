
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;



 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int) ;

__attribute__((used)) static void elink_8073_specific_func(struct elink_phy *phy,
         struct elink_params *params,
         uint32_t action)
{
 struct bxe_softc *sc = params->sc;
 switch (action) {
 case 128:

  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL, (1<<2));
  elink_cl45_write(sc, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x0004);
  break;
 }
}
