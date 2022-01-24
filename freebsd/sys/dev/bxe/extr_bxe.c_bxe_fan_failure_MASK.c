#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; } ;
struct TYPE_4__ {TYPE_1__* port_hw_config; } ;
struct TYPE_3__ {int /*<<< orphan*/  external_phy_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_SP_RTNL_FAN_FAILURE ; 
 int /*<<< orphan*/  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE ; 
 int /*<<< orphan*/  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK ; 
 int FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ dev_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    int port = FUNC1(sc);
    uint32_t ext_phy_config;

    /* mark the failure */
    ext_phy_config =
        FUNC2(sc, dev_info.port_hw_config[port].external_phy_config);

    ext_phy_config &= ~PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK;
    ext_phy_config |= PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE;
    FUNC3(sc, dev_info.port_hw_config[port].external_phy_config,
             ext_phy_config);

    /* log the failure */
    FUNC0(sc, "Fan Failure has caused the driver to shutdown "
              "the card to prevent permanent damage. "
              "Please contact OEM Support for assistance\n");

    /* XXX */
#if 1
    FUNC4(sc, ("Schedule task to handle fan failure\n"));
#else
    /*
     * Schedule device reset (unload)
     * This is due to some boards consuming sufficient power when driver is
     * up to overheat if fan fails.
     */
    bxe_set_bit(BXE_SP_RTNL_FAN_FAILURE, &sc->sp_rtnl_state);
    schedule_delayed_work(&sc->sp_rtnl_task, 0);
#endif
}