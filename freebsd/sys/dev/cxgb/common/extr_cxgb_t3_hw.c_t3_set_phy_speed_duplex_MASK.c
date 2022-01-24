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
 unsigned int BMCR_ANENABLE ; 
 unsigned int BMCR_FULLDPLX ; 
 unsigned int BMCR_SPEED100 ; 
 unsigned int BMCR_SPEED1000 ; 
 int DUPLEX_FULL ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int SPEED_100 ; 
 int SPEED_1000 ; 
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct cphy *phy, int speed, int duplex)
{
	int err;
	unsigned int ctl;

	err = FUNC0(phy, 0, MII_BMCR, &ctl);
	if (err)
		return err;

	if (speed >= 0) {
		ctl &= ~(BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);
		if (speed == SPEED_100)
			ctl |= BMCR_SPEED100;
		else if (speed == SPEED_1000)
			ctl |= BMCR_SPEED1000;
	}
	if (duplex >= 0) {
		ctl &= ~(BMCR_FULLDPLX | BMCR_ANENABLE);
		if (duplex == DUPLEX_FULL)
			ctl |= BMCR_FULLDPLX;
	}
	if (ctl & BMCR_SPEED1000)  /* auto-negotiation required for GigE */
		ctl |= BMCR_ANENABLE;
	return FUNC1(phy, 0, MII_BMCR, ctl);
}