#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int es_nports; } ;
struct ksz8995ma_softc {int numports; int cpuport; int phymask; int* ifpport; int* portphy; int /*<<< orphan*/ ** miibus; int /*<<< orphan*/ ** ifname; TYPE_2__** ifp; int /*<<< orphan*/  sc_dev; TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {int if_flags; int /*<<< orphan*/  if_xname; struct ksz8995ma_softc* if_softc; } ;

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
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  M_KSZ8995MA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  ksz8995ma_ifmedia_sts ; 
 int /*<<< orphan*/  ksz8995ma_ifmedia_upd ; 
 int FUNC8 (struct ksz8995ma_softc*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC12(struct ksz8995ma_softc *sc)
{
	int phy, port, err;
	char name[IFNAMSIZ];

	port = 0;
	err = 0;
	/* PHYs need an interface, so we generate a dummy one */
	FUNC11(name, IFNAMSIZ, "%sport", FUNC2(sc->sc_dev));
	for (phy = 0; phy < sc->numports; phy++) {
		if (phy == sc->cpuport)
			continue;
		if (((1 << phy) & sc->phymask) == 0)
			continue;
		sc->ifpport[phy] = port;
		sc->portphy[port] = phy;
		sc->ifp[port] = FUNC5(IFT_ETHER);
		if (sc->ifp[port] == NULL) {
			FUNC3(sc->sc_dev, "couldn't allocate ifnet structure\n");
			err = ENOMEM;
			break;
		}

		sc->ifp[port]->if_softc = sc;
		sc->ifp[port]->if_flags |= IFF_UP | IFF_BROADCAST |
		    IFF_DRV_RUNNING | IFF_SIMPLEX;
		FUNC7(sc->ifp[port], name, port);
		sc->miibus[port] = FUNC9(sizeof(device_t), M_KSZ8995MA,
		    M_WAITOK | M_ZERO);
		if (sc->miibus[port] == NULL) {
			err = ENOMEM;
			goto failed;
		}
		err = FUNC10(sc->sc_dev, sc->miibus[port], sc->ifp[port],
		    ksz8995ma_ifmedia_upd, ksz8995ma_ifmedia_sts, \
		    BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
		FUNC0(sc->sc_dev, "%s attached to pseudo interface %s\n",
		    FUNC2(*sc->miibus[port]),
		    sc->ifp[port]->if_xname);
		if (err != 0) {
			FUNC3(sc->sc_dev,
			    "attaching PHY %d failed\n",
			    phy);
			goto failed;
		}
		++port;
	}
	sc->info.es_nports = port;
	if (sc->cpuport != -1) {
		/* cpu port is MAC5 on ksz8995ma */ 
		sc->ifpport[sc->cpuport] = port;
		sc->portphy[port] = sc->cpuport;
		++sc->info.es_nports;
	}

	return (0);

failed:
	for (phy = 0; phy < sc->numports; phy++) {
		if (((1 << phy) & sc->phymask) == 0)
			continue;
		port = FUNC8(sc, phy);
		if (sc->miibus[port] != NULL)
			FUNC1(sc->sc_dev, (*sc->miibus[port]));
		if (sc->ifp[port] != NULL)
			FUNC6(sc->ifp[port]);
		if (sc->ifname[port] != NULL)
			FUNC4(sc->ifname[port], M_KSZ8995MA);
		if (sc->miibus[port] != NULL)
			FUNC4(sc->miibus[port], M_KSZ8995MA);
	}
	return (err);
}