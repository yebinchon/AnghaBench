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
struct cphy {int dummy; } ;

/* Variables and functions */
 int AEL2020_GPIO_MODDET ; 
 int /*<<< orphan*/  AEL2020_GPIO_STAT ; 
 int /*<<< orphan*/  MDIO_DEV_PMA_PMD ; 
 int FUNC0 (struct cphy*,int) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int phy_modtype_none ; 

__attribute__((used)) static int FUNC2(struct cphy *phy, int delay_ms)
{
	int v;
	unsigned int stat;

	v = FUNC1(phy, MDIO_DEV_PMA_PMD, AEL2020_GPIO_STAT, &stat);
	if (v)
		return v;

	if (stat & (0x1 << (AEL2020_GPIO_MODDET*4))) {
		/* module absent */
		return phy_modtype_none;
	}

	return FUNC0(phy, delay_ms);
}