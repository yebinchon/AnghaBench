
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct elink_params {size_t num_phys; TYPE_1__* phy; int chip_id; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int mdio_ctrl; } ;


 size_t ELINK_INT_PHY ;
 int elink_set_mdio_clk (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void elink_set_mdio_emac_per_phy(struct bxe_softc *sc,
     struct elink_params *params)
{
 uint8_t phy_index;


 for (phy_index = ELINK_INT_PHY; phy_index < params->num_phys;
       phy_index++)
  elink_set_mdio_clk(sc, params->chip_id,
       params->phy[phy_index].mdio_ctrl);
}
