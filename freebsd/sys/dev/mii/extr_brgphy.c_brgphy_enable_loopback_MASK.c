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
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRGPHY_BMCR_LOOP ; 
 int BRGPHY_BMSR_LINK ; 
 int /*<<< orphan*/  BRGPHY_MII_BMCR ; 
 int /*<<< orphan*/  BRGPHY_MII_BMSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mii_softc *sc)
{
	int i;

	FUNC2(sc, BRGPHY_MII_BMCR, BRGPHY_BMCR_LOOP);
	for (i = 0; i < 15000; i++) {
		if (!(FUNC1(sc, BRGPHY_MII_BMSR) & BRGPHY_BMSR_LINK))
			break;
		FUNC0(10);
	}
}