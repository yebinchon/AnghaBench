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
struct mii_attach_args {int /*<<< orphan*/  mii_phyno; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BMSR_EXTSTAT ; 
 int BMSR_MEDIAMASK ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 int EXTSR_1000TFDX ; 
 int EXTSR_1000THDX ; 
 int EXTSR_1000XFDX ; 
 int EXTSR_1000XHDX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_EXTSR ; 
 struct mii_attach_args* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	device_t parent;
	struct mii_attach_args *ma;
	int bmsr, extsr;

	parent = FUNC2(dev);
	ma = FUNC1(dev);

	/*
	 * We match as a generic TBI if:
	 *
	 *	- There is no media in the BMSR.
	 *	- EXTSR has only 1000X.
	 */
	bmsr = FUNC0(parent, ma->mii_phyno, MII_BMSR);
	if ((bmsr & BMSR_EXTSTAT) == 0 || (bmsr & BMSR_MEDIAMASK) != 0)
		return (ENXIO);

	extsr = FUNC0(parent, ma->mii_phyno, MII_EXTSR);
	if (extsr & (EXTSR_1000TFDX|EXTSR_1000THDX))
		return (ENXIO);

	if (extsr & (EXTSR_1000XFDX|EXTSR_1000XHDX)) {
		/*
		 * We think this is a generic TBI.  Return a match
		 * priority higher than ukphy, but lower than what
		 * specific drivers will return.
		 */
		FUNC3(dev, "Generic ten-bit interface");
		return (BUS_PROBE_LOW_PRIORITY);
	}

	return (ENXIO);
}