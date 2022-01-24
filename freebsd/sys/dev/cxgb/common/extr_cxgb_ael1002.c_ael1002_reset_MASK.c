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
struct cphy {int modtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEL1002_LB_EN ; 
 int /*<<< orphan*/  AEL1002_PWR_DOWN_HI ; 
 int /*<<< orphan*/  AEL1002_PWR_DOWN_LO ; 
 int /*<<< orphan*/  AEL1002_XFI_EQL ; 
 int /*<<< orphan*/  AEL100X_TX_CONFIG1 ; 
 int /*<<< orphan*/  MDIO_DEV_PMA_PMD ; 
 int FUNC0 (struct cphy*,int) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct cphy *phy, int wait)
{
	int err;

	if ((err = FUNC1(phy, 0)) ||
	    (err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL100X_TX_CONFIG1, 1)) ||
	    (err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL1002_PWR_DOWN_HI, 0)) ||
	    (err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL1002_PWR_DOWN_LO, 0)) ||
	    (err = FUNC2(phy, MDIO_DEV_PMA_PMD, AEL1002_XFI_EQL, 0x18)) ||
	    (err = FUNC3(phy, MDIO_DEV_PMA_PMD, AEL1002_LB_EN,
				       0, 1 << 5)))
		return err;

	err = FUNC0(phy, 300);
	if (err >= 0)
		phy->modtype = err;

	return 0;
}