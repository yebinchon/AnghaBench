
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int multi_phy_config; } ;
struct bxe_softc {TYPE_1__ link_params; } ;


 scalar_t__ ELINK_EXT_PHY1 ;
 scalar_t__ ELINK_EXT_PHY2 ;
 int ELINK_LINK_CONFIG_IDX (scalar_t__) ;
 int PORT_HW_CFG_PHY_SWAPPED_ENABLED ;
 scalar_t__ bxe_get_cur_phy_idx (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_get_link_cfg_idx(struct bxe_softc *sc)
{
    uint32_t sel_phy_idx = bxe_get_cur_phy_idx(sc);







    if (sc->link_params.multi_phy_config & PORT_HW_CFG_PHY_SWAPPED_ENABLED) {
        if (sel_phy_idx == ELINK_EXT_PHY1)
            sel_phy_idx = ELINK_EXT_PHY2;
        else if (sel_phy_idx == ELINK_EXT_PHY2)
            sel_phy_idx = ELINK_EXT_PHY1;
    }

    return (ELINK_LINK_CONFIG_IDX(sel_phy_idx));
}
