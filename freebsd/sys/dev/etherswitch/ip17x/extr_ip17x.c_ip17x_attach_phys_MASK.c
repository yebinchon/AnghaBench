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
struct TYPE_5__ {int es_nports; } ;
struct ip17x_softc {int phymask; int* phyport; int* portphy; int numports; TYPE_1__ info; int /*<<< orphan*/  sc_dev; TYPE_2__** ifp; int /*<<< orphan*/ ** miibus; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int if_flags; int /*<<< orphan*/  if_xname; struct ip17x_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int IFF_BROADCAST ; 
 int IFF_DRV_RUNNING ; 
 int IFF_SIMPLEX ; 
 int IFF_UP ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int MII_NPHY ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  M_IP17X ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  ip17x_ifmedia_sts ; 
 int /*<<< orphan*/  ip17x_ifmedia_upd ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC8(struct ip17x_softc *sc)
{
	int err, phy, port;
	char name[IFNAMSIZ];

	port = err = 0;

	/* PHYs need an interface, so we generate a dummy one */
	FUNC7(name, IFNAMSIZ, "%sport", FUNC1(sc->sc_dev));
	for (phy = 0; phy < MII_NPHY; phy++) {
		if (((1 << phy) & sc->phymask) == 0)
			continue;
		sc->phyport[phy] = port;
		sc->portphy[port] = phy;
		sc->ifp[port] = FUNC3(IFT_ETHER);
		if (sc->ifp[port] == NULL) {
			FUNC2(sc->sc_dev, "couldn't allocate ifnet structure\n");
			err = ENOMEM;
			break;
		}

		sc->ifp[port]->if_softc = sc;
		sc->ifp[port]->if_flags |= IFF_UP | IFF_BROADCAST |
		    IFF_DRV_RUNNING | IFF_SIMPLEX;
		FUNC4(sc->ifp[port], name, port);
		sc->miibus[port] = FUNC5(sizeof(device_t), M_IP17X,
		    M_WAITOK | M_ZERO);
		err = FUNC6(sc->sc_dev, sc->miibus[port], sc->ifp[port],
		    ip17x_ifmedia_upd, ip17x_ifmedia_sts, \
		    BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
		FUNC0(sc->sc_dev, "%s attached to pseudo interface %s\n",
		    FUNC1(*sc->miibus[port]),
		    sc->ifp[port]->if_xname);
		if (err != 0) {
			FUNC2(sc->sc_dev,
			    "attaching PHY %d failed\n",
			    phy);
			break;
		}
		sc->info.es_nports = port + 1;
		if (++port >= sc->numports)
			break;
	}
	return (err);
}