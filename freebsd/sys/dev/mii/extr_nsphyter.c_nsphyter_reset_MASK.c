#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mii_softc {int mii_flags; scalar_t__ mii_inst; TYPE_2__* mii_pdata; } ;
struct ifmedia_entry {int /*<<< orphan*/  ifm_media; } ;
struct TYPE_3__ {struct ifmedia_entry* ifm_cur; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;

/* Variables and functions */
 int BMCR_ISO ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MIIF_NOISOLATE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC2 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *sc)
{
	struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
	int reg, i;

	if ((sc->mii_flags & MIIF_NOISOLATE) != 0)
		reg = BMCR_RESET;
	else
		reg = BMCR_RESET | BMCR_ISO;
	FUNC3(sc, MII_BMCR, reg);

	/*
	 * It is best to allow a little time for the reset to settle
	 * in before we start polling the BMCR again.  Notably, the
	 * DP8384{3,7} manuals state that there should be a 500us delay
	 * between asserting software reset and attempting MII serial
	 * operations.  Be conservative.  Also, a DP83815 can get into
	 * a bad state on cable removal and reinsertion if we do not
	 * delay here.
	 */
	FUNC0(1000);

	/*
	 * Wait another 2s for it to complete.
	 * This is only a little overkill as under normal circumstances
	 * the PHY can take up to 1s to complete reset.
	 * This is also a bit odd because after a reset, the BMCR will
	 * clear the reset bit and simply reports 0 even though the reset
	 * is not yet complete.
	 */
	for (i = 0; i < 1000; i++) {
		reg = FUNC2(sc, MII_BMCR);
		if (reg != 0 && (reg & BMCR_RESET) == 0)
			break;
		FUNC0(2000);
	}

	if ((sc->mii_flags & MIIF_NOISOLATE) == 0) {
		if ((ife == NULL && sc->mii_inst != 0) ||
		    (ife != NULL && FUNC1(ife->ifm_media) != sc->mii_inst))
			FUNC3(sc, MII_BMCR, reg | BMCR_ISO);
	}
}