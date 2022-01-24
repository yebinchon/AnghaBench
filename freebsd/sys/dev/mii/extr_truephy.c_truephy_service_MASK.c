#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mii_softc {int dummy; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 int BMCR_AUTOEN ; 
 int BMCR_PDOWN ; 
 int BMCR_STARTNEG ; 
 int /*<<< orphan*/  EJUSTRETURN ; 
 int /*<<< orphan*/  IFM_1000_T ; 
 int /*<<< orphan*/  IFM_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BMCR ; 
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
	struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
	int bmcr;

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		if (FUNC0(ife->ifm_media) != IFM_AUTO) {
			bmcr = FUNC1(sc, MII_BMCR) & ~BMCR_AUTOEN;
			FUNC3(sc, MII_BMCR, bmcr);
			FUNC3(sc, MII_BMCR, bmcr | BMCR_PDOWN);
		}

		FUNC4(sc);

		if (FUNC0(ife->ifm_media) != IFM_AUTO) {
			bmcr = FUNC1(sc, MII_BMCR) & ~BMCR_PDOWN;
			FUNC3(sc, MII_BMCR, bmcr);

			if (FUNC0(ife->ifm_media) == IFM_1000_T) {
				FUNC3(sc, MII_BMCR,
				    bmcr | BMCR_AUTOEN | BMCR_STARTNEG);
			}
		}
		break;

	case MII_TICK:
		if (FUNC5(sc) == EJUSTRETURN)
			return (0);
		break;
	}

	/* Update the media status. */
	FUNC2(sc);

	/* Callback if something changed. */
	FUNC6(sc, cmd);
	return (0);
}