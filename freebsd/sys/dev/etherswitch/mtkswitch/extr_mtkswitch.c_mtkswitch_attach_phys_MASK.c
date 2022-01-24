#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mtkswitch_softc {int numphys; unsigned int phymap; TYPE_1__** ifp; int /*<<< orphan*/ ** miibus; int /*<<< orphan*/ * sc_dev; int /*<<< orphan*/ ** ifname; } ;
struct TYPE_4__ {int if_flags; int /*<<< orphan*/  if_xname; struct mtkswitch_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_DRV_RUNNING ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtkswitch_ifmedia_sts ; 
 int /*<<< orphan*/  mtkswitch_ifmedia_upd ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(struct mtkswitch_softc *sc)
{
	int phy, err = 0;
	char name[IFNAMSIZ];

	/* PHYs need an interface, so we generate a dummy one */
	FUNC9(name, IFNAMSIZ, "%sport", FUNC2(sc->sc_dev));
	for (phy = 0; phy < sc->numphys; phy++) {
		if ((sc->phymap & (1u << phy)) == 0) {
			sc->ifp[phy] = NULL;
			sc->ifname[phy] = NULL;
			sc->miibus[phy] = NULL;
			continue;
		}
		sc->ifp[phy] = FUNC4(IFT_ETHER);
		if (sc->ifp[phy] == NULL) {
			FUNC3(sc->sc_dev, "couldn't allocate ifnet structure\n");
			err = ENOMEM;
			break;
		}

		sc->ifp[phy]->if_softc = sc;
		sc->ifp[phy]->if_flags |= IFF_UP | IFF_BROADCAST |
		    IFF_DRV_RUNNING | IFF_SIMPLEX;
		sc->ifname[phy] = FUNC6(FUNC10(name) + 1, M_DEVBUF, M_WAITOK);
		FUNC1(name, sc->ifname[phy], FUNC10(name) + 1);
		FUNC5(sc->ifp[phy], sc->ifname[phy],
		    FUNC8(phy));
		err = FUNC7(sc->sc_dev, &sc->miibus[phy], sc->ifp[phy],
		    mtkswitch_ifmedia_upd, mtkswitch_ifmedia_sts,
		    BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
		if (err != 0) {
			FUNC3(sc->sc_dev,
			    "attaching PHY %d failed\n",
			    phy);
		} else {
			FUNC0(sc->sc_dev, "%s attached to pseudo interface "
			    "%s\n", FUNC2(sc->miibus[phy]),
			    sc->ifp[phy]->if_xname);
		}
	}
	return (err);
}