#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * supported; void* phy_addr; int /*<<< orphan*/ * link_config; } ;
struct TYPE_9__ {int num_phys; int multi_phy_config; int* speed_cap_mask; TYPE_1__* phy; } ;
struct bxe_softc {TYPE_3__ port; TYPE_4__ link_params; } ;
struct TYPE_10__ {TYPE_2__* port_hw_config; } ;
struct TYPE_7__ {int /*<<< orphan*/  external_phy_config2; int /*<<< orphan*/  external_phy_config; } ;
struct TYPE_6__ {int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ELINK_EXT_PHY1 ; 
 size_t ELINK_EXT_PHY2 ; 
 size_t ELINK_INT_PHY ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_10000baseT_Full ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_1000baseT_Full ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_100baseT_Full ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_100baseT_Half ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_10baseT_Full ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_10baseT_Half ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_20000baseKR2_Full ; 
 int /*<<< orphan*/  ELINK_SUPPORTED_2500baseX_Full ; 
#define  ELINK_SWITCH_CFG_10G 129 
#define  ELINK_SWITCH_CFG_1G 128 
 size_t MISC_REG_WC0_CTRL_PHY_ADDR ; 
 size_t NIG_REG_SERDES0_CTRL_PHY_ADDR ; 
 size_t NIG_REG_XGXS0_CTRL_PHY_ADDR ; 
 int PORT_HW_CFG_PHY_SWAPPED_ENABLED ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_20G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G ; 
 void* FUNC4 (struct bxe_softc*,size_t) ; 
 size_t FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 TYPE_5__ dev_info ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc,
                            uint32_t         switch_cfg)
{
    uint32_t cfg_size = 0;
    uint32_t idx;
    uint8_t port = FUNC5(sc);

    /* aggregation of supported attributes of all external phys */
    sc->port.supported[0] = 0;
    sc->port.supported[1] = 0;

    switch (sc->link_params.num_phys) {
    case 1:
        sc->port.supported[0] = sc->link_params.phy[ELINK_INT_PHY].supported;
        cfg_size = 1;
        break;
    case 2:
        sc->port.supported[0] = sc->link_params.phy[ELINK_EXT_PHY1].supported;
        cfg_size = 1;
        break;
    case 3:
        if (sc->link_params.multi_phy_config &
            PORT_HW_CFG_PHY_SWAPPED_ENABLED) {
            sc->port.supported[1] =
                sc->link_params.phy[ELINK_EXT_PHY1].supported;
            sc->port.supported[0] =
                sc->link_params.phy[ELINK_EXT_PHY2].supported;
        } else {
            sc->port.supported[0] =
                sc->link_params.phy[ELINK_EXT_PHY1].supported;
            sc->port.supported[1] =
                sc->link_params.phy[ELINK_EXT_PHY2].supported;
        }
        cfg_size = 2;
        break;
    }

    if (!(sc->port.supported[0] || sc->port.supported[1])) {
        FUNC1(sc, "Invalid phy config in NVRAM (PHY1=0x%08x PHY2=0x%08x)\n",
              FUNC6(sc,
                       dev_info.port_hw_config[port].external_phy_config),
              FUNC6(sc,
                       dev_info.port_hw_config[port].external_phy_config2));
        return;
    }

    if (FUNC2(sc))
        sc->port.phy_addr = FUNC4(sc, MISC_REG_WC0_CTRL_PHY_ADDR);
    else {
        switch (switch_cfg) {
        case ELINK_SWITCH_CFG_1G:
            sc->port.phy_addr =
                FUNC4(sc, NIG_REG_SERDES0_CTRL_PHY_ADDR + port*0x10);
            break;
        case ELINK_SWITCH_CFG_10G:
            sc->port.phy_addr =
                FUNC4(sc, NIG_REG_XGXS0_CTRL_PHY_ADDR + port*0x18);
            break;
        default:
            FUNC1(sc, "Invalid switch config in link_config=0x%08x\n",
                  sc->port.link_config[0]);
            return;
        }
    }

    FUNC0(sc, DBG_LOAD, "PHY addr 0x%08x\n", sc->port.phy_addr);

    /* mask what we support according to speed_cap_mask per configuration */
    for (idx = 0; idx < cfg_size; idx++) {
        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_10baseT_Half;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_10baseT_Full;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_100baseT_Half;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_100baseT_Full;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_1000baseT_Full;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_2500baseX_Full;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_10000baseT_Full;
        }

        if (!(sc->link_params.speed_cap_mask[idx] &
              PORT_HW_CFG_SPEED_CAPABILITY_D0_20G)) {
            sc->port.supported[idx] &= ~ELINK_SUPPORTED_20000baseKR2_Full;
        }
    }

    FUNC0(sc, DBG_LOAD, "PHY supported 0=0x%08x 1=0x%08x\n",
          sc->port.supported[0], sc->port.supported[1]);
	FUNC3(sc, "PHY supported 0=0x%08x 1=0x%08x\n",
					sc->port.supported[0], sc->port.supported[1]);
}