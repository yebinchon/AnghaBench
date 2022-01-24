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
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 unsigned int MDIO_CTRL1_LPOWER ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	unsigned int reg;

	reg = FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL1);

	reg |= MDIO_CTRL1_LPOWER;
	FUNC2(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

	FUNC0(75);

	reg &= ~MDIO_CTRL1_LPOWER;
	FUNC2(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);
}