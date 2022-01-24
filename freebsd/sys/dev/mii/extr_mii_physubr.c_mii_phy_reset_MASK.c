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
 int BMCR_PDOWN ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MIIF_NOISOLATE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC2 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct mii_softc *sc)
{
	struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
	int i, reg;

	if ((sc->mii_flags & MIIF_NOISOLATE) != 0)
		reg = BMCR_RESET;
	else
		reg = BMCR_RESET | BMCR_ISO;
	FUNC3(sc, MII_BMCR, reg);

	/* Wait 100ms for it to complete. */
	for (i = 0; i < 100; i++) {
		reg = FUNC2(sc, MII_BMCR);
		if ((reg & BMCR_RESET) == 0)
			break;
		FUNC0(1000);
	}

	/* NB: a PHY may default to being powered down and/or isolated. */
	reg &= ~(BMCR_PDOWN | BMCR_ISO);
	if ((sc->mii_flags & MIIF_NOISOLATE) == 0 &&
	    ((ife == NULL && sc->mii_inst != 0) ||
	    (ife != NULL && FUNC1(ife->ifm_media) != sc->mii_inst)))
		reg |= BMCR_ISO;
	if (FUNC2(sc, MII_BMCR) != reg)
		FUNC3(sc, MII_BMCR, reg);
}