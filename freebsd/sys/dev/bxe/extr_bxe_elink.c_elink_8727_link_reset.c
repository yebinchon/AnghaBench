
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int ,int ) ;
 int elink_set_disable_pmd_transmit (struct elink_params*,struct elink_phy*,int) ;
 int elink_sfp_set_transmitter (struct elink_params*,struct elink_phy*,int ) ;

__attribute__((used)) static void elink_8727_link_reset(struct elink_phy *phy,
      struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;


 elink_set_disable_pmd_transmit(params, phy, 1);


 elink_sfp_set_transmitter(params, phy, 0);

 elink_cl45_write(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0);

}
