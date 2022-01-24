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
struct sis_softc {scalar_t__ sis_type; scalar_t__ sis_rev; int /*<<< orphan*/  sis_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct sis_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ NS_BMCR ; 
 scalar_t__ NS_BMSR ; 
 scalar_t__ SIS_PHYCTL ; 
 int SIS_PHYCTL_ACCESS ; 
 int SIS_PHYOP_READ ; 
 scalar_t__ SIS_REV_635 ; 
 int /*<<< orphan*/  FUNC3 (struct sis_softc*,scalar_t__,int) ; 
 int SIS_TIMEOUT ; 
 scalar_t__ SIS_TYPE_83815 ; 
 scalar_t__ SIS_TYPE_900 ; 
 struct sis_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  sis_mii_bitbang_ops ; 

__attribute__((used)) static int
FUNC7(device_t dev, int phy, int reg)
{
	struct sis_softc	*sc;

	sc = FUNC4(dev);

	if (sc->sis_type == SIS_TYPE_83815) {
		if (phy != 0)
			return (0);
		/*
		 * The NatSemi chip can take a while after
		 * a reset to come ready, during which the BMSR
		 * returns a value of 0. This is *never* supposed
		 * to happen: some of the BMSR bits are meant to
		 * be hardwired in the on position, and this can
		 * confuse the miibus code a bit during the probe
		 * and attach phase. So we make an effort to check
		 * for this condition and wait for it to clear.
		 */
		if (!FUNC0(sc, NS_BMSR))
			FUNC2(1000);
		return FUNC0(sc, NS_BMCR + (reg * 4));
	}

	/*
	 * Chipsets < SIS_635 seem not to be able to read/write
	 * through mdio. Use the enhanced PHY access register
	 * again for them.
	 */
	if (sc->sis_type == SIS_TYPE_900 &&
	    sc->sis_rev < SIS_REV_635) {
		int i, val = 0;

		if (phy != 0)
			return (0);

		FUNC1(sc, SIS_PHYCTL,
		    (phy << 11) | (reg << 6) | SIS_PHYOP_READ);
		FUNC3(sc, SIS_PHYCTL, SIS_PHYCTL_ACCESS);

		for (i = 0; i < SIS_TIMEOUT; i++) {
			if (!(FUNC0(sc, SIS_PHYCTL) & SIS_PHYCTL_ACCESS))
				break;
		}

		if (i == SIS_TIMEOUT) {
			FUNC5(sc->sis_dev,
			    "PHY failed to come ready\n");
			return (0);
		}

		val = (FUNC0(sc, SIS_PHYCTL) >> 16) & 0xFFFF;

		if (val == 0xFFFF)
			return (0);

		return (val);
	} else
		return (FUNC6(dev, &sis_mii_bitbang_ops, phy,
		    reg));
}