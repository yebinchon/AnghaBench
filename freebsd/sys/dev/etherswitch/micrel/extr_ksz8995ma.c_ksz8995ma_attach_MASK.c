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
struct TYPE_2__ {int es_nvlangroups; int es_vlan_caps; int /*<<< orphan*/  es_name; } ;
struct ksz8995ma_softc {int numports; int phymask; int cpuport; int media; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * ifname; int /*<<< orphan*/ * miibus; int /*<<< orphan*/ * portphy; scalar_t__ vlan_mode; int /*<<< orphan*/  callout_tick; TYPE_1__ info; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ETHERSWITCH_VLAN_DOT1Q ; 
 int ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  KSZ8995MA_CID1 ; 
 int /*<<< orphan*/  KSZ8995MA_GC3 ; 
 int KSZ8995MA_MAX_PORT ; 
 int KSZ8995MA_START ; 
 int KSZ8995MA_VLAN_ENABLE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_KSZ8995MA ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ksz8995ma_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ksz8995ma_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ksz8995ma_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct ksz8995ma_softc	*sc;
	int			 err, reg;

	err = 0;
	sc = FUNC6(dev);

	sc->sc_dev = dev;
	FUNC15(&sc->sc_mtx, "ksz8995ma", NULL, MTX_DEF);
	FUNC17(sc->info.es_name, FUNC4(dev),
	    sizeof(sc->info.es_name));

	/* KSZ8995MA Defaults */
	sc->numports = KSZ8995MA_MAX_PORT;
	sc->phymask = (1 << (KSZ8995MA_MAX_PORT + 1)) - 1;
	sc->cpuport = -1;
	sc->media = 100;

	(void) FUNC16(FUNC5(dev), FUNC7(dev),
	    "cpuport", &sc->cpuport);

	sc->info.es_nvlangroups = 16;
	sc->info.es_vlan_caps = ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOT1Q;

	sc->ifp = FUNC14(sizeof(struct ifnet *) * sc->numports, M_KSZ8995MA,
	    M_WAITOK | M_ZERO);
	sc->ifname = FUNC14(sizeof(char *) * sc->numports, M_KSZ8995MA,
	    M_WAITOK | M_ZERO);
	sc->miibus = FUNC14(sizeof(device_t *) * sc->numports, M_KSZ8995MA,
	    M_WAITOK | M_ZERO);
	sc->portphy = FUNC14(sizeof(int) * sc->numports, M_KSZ8995MA,
	    M_WAITOK | M_ZERO);

	if (sc->ifp == NULL || sc->ifname == NULL || sc->miibus == NULL ||
	    sc->portphy == NULL) {
		err = ENOMEM;
		goto failed;
	}

	/*
	 * Attach the PHYs and complete the bus enumeration.
	 */
	err = FUNC9(sc);
	if (err != 0)
		goto failed;

	FUNC2(dev);
	FUNC0(dev);
	err = FUNC1(dev);
	if (err != 0)
		goto failed;
	
	FUNC3(&sc->callout_tick, 0);

	FUNC12(sc);
	
	/* start switch */
	sc->vlan_mode = 0;
	reg = FUNC11(dev, KSZ8995MA_GC3);
	FUNC13(dev, KSZ8995MA_GC3, 
	    reg & ~KSZ8995MA_VLAN_ENABLE);
	FUNC10(dev);
	FUNC13(dev, KSZ8995MA_CID1, KSZ8995MA_START);

	return (0);

failed:
	if (sc->portphy != NULL)
		FUNC8(sc->portphy, M_KSZ8995MA);
	if (sc->miibus != NULL)
		FUNC8(sc->miibus, M_KSZ8995MA);
	if (sc->ifname != NULL)
		FUNC8(sc->ifname, M_KSZ8995MA);
	if (sc->ifp != NULL)
		FUNC8(sc->ifp, M_KSZ8995MA);

	return (err);
}