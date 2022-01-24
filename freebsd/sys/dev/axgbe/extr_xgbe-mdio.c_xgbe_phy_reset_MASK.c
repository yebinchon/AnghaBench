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
struct xgbe_prv_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MDIO_AN_INT ; 
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 unsigned int MDIO_CTRL1_RESET ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata)
{
	unsigned int count, reg;

	reg = FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
	reg |= MDIO_CTRL1_RESET;
	FUNC2(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

	count = 50;
	do {
		FUNC0(20);
		reg = FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
	} while ((reg & MDIO_CTRL1_RESET) && --count);

	if (reg & MDIO_CTRL1_RESET)
		return -ETIMEDOUT;

	/* Disable auto-negotiation for now */
	FUNC3(pdata);

	/* Clear auto-negotiation interrupts */
	FUNC2(pdata, MDIO_MMD_AN, MDIO_AN_INT, 0);

	return 0;
}