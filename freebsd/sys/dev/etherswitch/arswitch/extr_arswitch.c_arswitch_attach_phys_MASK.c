#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct arswitch_softc {int numphys; TYPE_1__** dev_led; int /*<<< orphan*/  sc_dev; TYPE_2__** ifp; int /*<<< orphan*/ * miibus; int /*<<< orphan*/ * ifname; } ;
struct TYPE_6__ {int if_flags; int /*<<< orphan*/  if_xname; struct arswitch_softc* if_softc; } ;
struct TYPE_5__ {int phy; int lednum; struct arswitch_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327 ; 
 scalar_t__ FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  arswitch_ifmedia_sts ; 
 int /*<<< orphan*/  arswitch_ifmedia_upd ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int,int) ; 
 scalar_t__ FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(struct arswitch_softc *sc)
{
	int phy, err = 0;
	char name[IFNAMSIZ];

	/* PHYs need an interface, so we generate a dummy one */
	FUNC10(name, IFNAMSIZ, "%sport", FUNC4(sc->sc_dev));
	for (phy = 0; phy < sc->numphys; phy++) {
		sc->ifp[phy] = FUNC6(IFT_ETHER);
		if (sc->ifp[phy] == NULL) {
			FUNC5(sc->sc_dev, "couldn't allocate ifnet structure\n");
			err = ENOMEM;
			break;
		}

		sc->ifp[phy]->if_softc = sc;
		sc->ifp[phy]->if_flags |= IFF_UP | IFF_BROADCAST |
		    IFF_DRV_RUNNING | IFF_SIMPLEX;
		sc->ifname[phy] = FUNC8(FUNC12(name)+1, M_DEVBUF, M_WAITOK);
		FUNC3(name, sc->ifname[phy], FUNC12(name)+1);
		FUNC7(sc->ifp[phy], sc->ifname[phy],
		    FUNC2(phy));
		err = FUNC9(sc->sc_dev, &sc->miibus[phy], sc->ifp[phy],
		    arswitch_ifmedia_upd, arswitch_ifmedia_sts, \
		    BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
#if 0
		DPRINTF(sc->sc_dev, "%s attached to pseudo interface %s\n",
		    device_get_nameunit(sc->miibus[phy]),
		    sc->ifp[phy]->if_xname);
#endif
		if (err != 0) {
			FUNC5(sc->sc_dev,
			    "attaching PHY %d failed\n",
			    phy);
			return (err);
		}

		if (FUNC0(sc, AR8327)) {
			int led;
			char ledname[IFNAMSIZ+4];

			for (led = 0; led < 3; led++) {
				FUNC11(ledname, "%s%dled%d", name,
				    FUNC2(phy), led+1);
				sc->dev_led[phy][led].sc = sc;
				sc->dev_led[phy][led].phy = phy;
				sc->dev_led[phy][led].lednum = led;
			}
		}
	}
	return (0);
}