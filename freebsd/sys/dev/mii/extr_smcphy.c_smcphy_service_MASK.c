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
struct mii_softc {int /*<<< orphan*/  mii_ticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 int BMCR_ISO ; 
 int BMSR_LINK ; 
#define  IFM_AUTO 131 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_ANEGTICKS ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
        struct	ifmedia_entry *ife;
        int	reg;

	ife = mii->mii_media.ifm_cur;

        switch (cmd) {
        case MII_POLLSTAT:
                break;

        case MII_MEDIACHG:
		switch (FUNC0(ife->ifm_media)) {
		case IFM_AUTO:
			FUNC7(sc, ife->ifm_media);
			break;

		default:
                	FUNC5(sc);
			break;
		}

                break;

        case MII_TICK:
		if (FUNC0(ife->ifm_media) != IFM_AUTO) {
			break;
		}

		/* I have no idea why BMCR_ISO gets set. */
		reg = FUNC1(sc, MII_BMCR);
		if (reg & BMCR_ISO) {
			FUNC4(sc, MII_BMCR, reg & ~BMCR_ISO);
		}

		reg = FUNC1(sc, MII_BMSR) | FUNC1(sc, MII_BMSR);
		if (reg & BMSR_LINK) {
			sc->mii_ticks = 0;
			break;
		}

		if (++sc->mii_ticks <= MII_ANEGTICKS) {
			break;
		}

		sc->mii_ticks = 0;
		FUNC2(sc);
		FUNC7(sc, ife->ifm_media);
                break;
        }

        /* Update the media status. */
        FUNC3(sc);

        /* Callback if something changed. */
        FUNC6(sc, cmd);
        return (0);
}