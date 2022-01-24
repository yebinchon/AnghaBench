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
typedef  int u_int ;
struct mii_softc {int /*<<< orphan*/  mii_dev; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MII_BMCR ; 
 int FUNC1 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *sc)
{
	u_int	bmcr;
	int	timeout;

	FUNC2(sc, MII_BMCR, BMCR_RESET);

	for (timeout = 2; timeout > 0; timeout--) {
		FUNC0(50000);
		bmcr = FUNC1(sc, MII_BMCR);
		if ((bmcr & BMCR_RESET) == 0)
			break;
	}

	if (bmcr & BMCR_RESET)
		FUNC3(sc->mii_dev, "reset failed\n");

	FUNC2(sc, MII_BMCR, 0x3000);

	/* Mask interrupts, we poll instead. */
	FUNC2(sc, 0x1e, 0xffc0);
}