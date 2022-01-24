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
struct cphy {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_T3DBG_GPIO_EN ; 
 int /*<<< orphan*/  F_GPIO6_OUT_VAL ; 
 int /*<<< orphan*/  MDIO_DEV_PMA_PMD ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct cphy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cphy *phy, int wait)
{
	int err;

	err = FUNC2(phy, MDIO_DEV_PMA_PMD, wait);
	if (err)
		return err;

	FUNC3(phy->adapter, A_T3DBG_GPIO_EN, 
			 F_GPIO6_OUT_VAL, 0);

	FUNC0(125);

	FUNC3(phy->adapter, A_T3DBG_GPIO_EN, 
			 F_GPIO6_OUT_VAL, F_GPIO6_OUT_VAL);

	FUNC0(125);

	err = FUNC2(phy, MDIO_DEV_PMA_PMD, wait);
	if (err)
		return err;

	FUNC0(125);

	err = FUNC1(phy, MDIO_DEV_PMA_PMD, MII_BMCR, 1, 1);
	if (err)
		return err;
	
	FUNC0(125);

	err = FUNC1(phy, MDIO_DEV_PMA_PMD, MII_BMCR, 1, 0);

	return err;
	   
}