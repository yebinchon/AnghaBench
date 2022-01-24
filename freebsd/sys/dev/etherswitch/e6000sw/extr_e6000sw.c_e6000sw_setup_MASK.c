#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATU_CONTROL ; 
 int ATU_CONTROL_AGETIME ; 
 int ATU_CONTROL_AGETIME_MASK ; 
 int /*<<< orphan*/  COUNT_ALL ; 
 int E6000SW_DEFAULT_AGETIME ; 
 int /*<<< orphan*/  MGMT_EN_0x ; 
 int /*<<< orphan*/  MGMT_EN_2x ; 
 int MGMT_EN_ALL ; 
 int /*<<< orphan*/  NO_OPERATION ; 
 int /*<<< orphan*/  REG_GLOBAL ; 
 int /*<<< orphan*/  REG_GLOBAL2 ; 
 int /*<<< orphan*/  SWITCH_GLOBAL_CONTROL2 ; 
 int /*<<< orphan*/  SWITCH_MGMT ; 
 int SWITCH_MGMT_FC_PRI_MASK ; 
 int SWITCH_MGMT_FORCEFLOW ; 
 int SWITCH_MGMT_PRI_MASK ; 
 int SWITCH_MGMT_RSVD2CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev, e6000sw_softc_t *sc)
{
	uint32_t atu_ctrl;

	/* Set aging time. */
	atu_ctrl = FUNC2(sc, REG_GLOBAL, ATU_CONTROL);
	atu_ctrl &= ~ATU_CONTROL_AGETIME_MASK;
	atu_ctrl |= E6000SW_DEFAULT_AGETIME << ATU_CONTROL_AGETIME;
	FUNC4(sc, REG_GLOBAL, ATU_CONTROL, atu_ctrl);

	/* Send all with specific mac address to cpu port */
	FUNC4(sc, REG_GLOBAL2, MGMT_EN_2x, MGMT_EN_ALL);
	FUNC4(sc, REG_GLOBAL2, MGMT_EN_0x, MGMT_EN_ALL);

	/* Disable Remote Management */
	FUNC4(sc, REG_GLOBAL, SWITCH_GLOBAL_CONTROL2, 0);

	/* Disable loopback filter and flow control messages */
	FUNC4(sc, REG_GLOBAL2, SWITCH_MGMT,
	    SWITCH_MGMT_PRI_MASK |
	    (1 << SWITCH_MGMT_RSVD2CPU) |
	    SWITCH_MGMT_FC_PRI_MASK |
	    (1 << SWITCH_MGMT_FORCEFLOW));

	FUNC0(dev, sc, NO_OPERATION);
	FUNC1(dev, sc, NULL, NO_OPERATION);
	FUNC3(dev, sc, 0, COUNT_ALL);
}