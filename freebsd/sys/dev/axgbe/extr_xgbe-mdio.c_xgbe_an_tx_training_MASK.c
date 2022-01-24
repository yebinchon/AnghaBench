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
struct xgbe_prv_data {unsigned int fec_ability; } ;
typedef  enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef  enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;

/* Variables and functions */
 scalar_t__ MDIO_AN_ADVERTISE ; 
 scalar_t__ MDIO_AN_LPA ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 unsigned int MDIO_PMA_10GBR_FECABLE_ABLE ; 
 unsigned int MDIO_PMA_10GBR_FECABLE_ERRABLE ; 
 scalar_t__ MDIO_PMA_10GBR_FECCTRL ; 
 scalar_t__ MDIO_PMA_10GBR_PMD_CTRL ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  SIR0_KR_RT_1 ; 
 int XGBE_AN_PAGE_RECEIVED ; 
 unsigned int XGBE_KR_TRAINING_ENABLE ; 
 unsigned int XGBE_KR_TRAINING_START ; 
 int XGBE_RX_COMPLETE ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static enum xgbe_an FUNC4(struct xgbe_prv_data *pdata,
					enum xgbe_rx *state)
{
	unsigned int ad_reg, lp_reg, reg;

	*state = XGBE_RX_COMPLETE;

	/* If we're not in KR mode then we're done */
	if (!FUNC3(pdata))
		return XGBE_AN_PAGE_RECEIVED;

	/* Enable/Disable FEC */
	ad_reg = FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2);
	lp_reg = FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_LPA + 2);

	reg = FUNC0(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_FECCTRL);
	reg &= ~(MDIO_PMA_10GBR_FECABLE_ABLE | MDIO_PMA_10GBR_FECABLE_ERRABLE);
	if ((ad_reg & 0xc000) && (lp_reg & 0xc000))
		reg |= pdata->fec_ability;

	FUNC1(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_FECCTRL, reg);

	/* Start KR training */
	reg = FUNC0(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL);
	if (reg & XGBE_KR_TRAINING_ENABLE) {
		FUNC2(pdata, SIR0_KR_RT_1, RESET, 1);

		reg |= XGBE_KR_TRAINING_START;
		FUNC1(pdata, MDIO_MMD_PMAPMD, MDIO_PMA_10GBR_PMD_CTRL,
			    reg);

		FUNC2(pdata, SIR0_KR_RT_1, RESET, 0);
	}

	return XGBE_AN_PAGE_RECEIVED;
}