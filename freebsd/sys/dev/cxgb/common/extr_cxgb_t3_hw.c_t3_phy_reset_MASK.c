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
 int /*<<< orphan*/  BMCR_PDOWN ; 
 unsigned int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct cphy*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct cphy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct cphy *phy, int mmd, int wait)
{
	int err;
	unsigned int ctl;

	err = FUNC2(phy, mmd, MII_BMCR, BMCR_PDOWN, BMCR_RESET);
	if (err || !wait)
		return err;

	do {
		err = FUNC0(phy, mmd, MII_BMCR, &ctl);
		if (err)
			return err;
		ctl &= BMCR_RESET;
		if (ctl)
			FUNC1(1);
	} while (ctl && --wait);

	return ctl ? -1 : 0;
}