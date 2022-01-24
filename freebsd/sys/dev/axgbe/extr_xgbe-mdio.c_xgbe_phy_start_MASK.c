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
struct xgbe_prv_data {int /*<<< orphan*/  an_irq_tag; int /*<<< orphan*/  an_irq_res; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  MDIO_AN_INTMASK ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xgbe_prv_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  xgbe_an_isr ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int FUNC6 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC7 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC8 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC11(struct xgbe_prv_data *pdata)
{
	int ret;

	ret = FUNC1(pdata->dev, pdata->an_irq_res,
	    INTR_MPSAFE | INTR_TYPE_NET, NULL, xgbe_an_isr, pdata,
	    &pdata->an_irq_tag);
	if (ret) {
		return -ret;
	}

	/* Set initial mode - call the mode setting routines
	 * directly to insure we are properly configured
	 */
	if (FUNC9(pdata)) {
		FUNC10(pdata);
	} else if (FUNC8(pdata)) {
		FUNC5(pdata);
	} else if (FUNC7(pdata)) {
		FUNC4(pdata);
	} else {
		ret = -EINVAL;
		goto err_irq;
	}

	/* Set up advertisement registers based on current settings */
	FUNC3(pdata);

	/* Enable auto-negotiation interrupts */
	FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0x07);

	return FUNC6(pdata);

err_irq:
	FUNC2(pdata->dev, pdata->an_irq_res, pdata->an_irq_tag);

	return ret;
}