#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int link; scalar_t__ autoneg; } ;
struct xgbe_prv_data {int /*<<< orphan*/  dev_state; TYPE_1__ phy; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_STAT1 ; 
 unsigned int MDIO_STAT1_LSTATUS ; 
 int /*<<< orphan*/  XGBE_LINK_ERR ; 
 int /*<<< orphan*/  XGBE_LINK_INIT ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC7(struct xgbe_prv_data *pdata)
{
	unsigned int reg, link_aneg;

	if (FUNC2(XGBE_LINK_ERR, &pdata->dev_state)) {
		pdata->phy.link = 0;
		goto adjust_link;
	}

	link_aneg = (pdata->phy.autoneg == AUTONEG_ENABLE);

	/* Get the link status. Link status is latched low, so read
	 * once to clear and then read again to get current state
	 */
	reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_STAT1);
	reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_STAT1);
	pdata->phy.link = (reg & MDIO_STAT1_LSTATUS) ? 1 : 0;

	if (pdata->phy.link) {
		if (link_aneg && !FUNC5(pdata)) {
			FUNC3(pdata);
			return;
		}

		FUNC6(pdata);

		if (FUNC2(XGBE_LINK_INIT, &pdata->dev_state))
			FUNC1(XGBE_LINK_INIT, &pdata->dev_state);
	} else {
		if (FUNC2(XGBE_LINK_INIT, &pdata->dev_state)) {
			FUNC3(pdata);

			if (link_aneg)
				return;
		}

		FUNC6(pdata);
	}

adjust_link:
	FUNC4(pdata);
}