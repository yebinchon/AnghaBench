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
struct TYPE_2__ {scalar_t__ es_nvlangroups; int /*<<< orphan*/  es_name; } ;
struct ukswitch_softc {int numports; int phymask; int phyoffset; int cpuport; int media; int /*<<< orphan*/  callout_tick; void* portphy; void* miibus; void* ifname; void* ifp; TYPE_1__ info; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_UKSWITCH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ukswitch_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct ukswitch_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ukswitch_softc*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct ukswitch_softc *sc;
	int err = 0;

	sc = FUNC6(dev);

	sc->sc_dev = dev;
	FUNC9(&sc->sc_mtx, "ukswitch", NULL, MTX_DEF);
	FUNC11(sc->info.es_name, FUNC4(dev),
	    sizeof(sc->info.es_name));

	/* XXX Defaults */
	sc->numports = 6;
	sc->phymask = 0x0f;
	sc->phyoffset = 0;
	sc->cpuport = -1;
	sc->media = 100;

	(void) FUNC10(FUNC5(dev), FUNC7(dev),
	    "numports", &sc->numports);
	(void) FUNC10(FUNC5(dev), FUNC7(dev),
	    "phymask", &sc->phymask);
	(void) FUNC10(FUNC5(dev), FUNC7(dev),
	    "phyoffset", &sc->phyoffset);
	(void) FUNC10(FUNC5(dev), FUNC7(dev),
	    "cpuport", &sc->cpuport);
	(void) FUNC10(FUNC5(dev), FUNC7(dev),
	    "media", &sc->media);

	/* Support only fast and giga ethernet. */
	if (sc->media != 100 && sc->media != 1000)
		sc->media = 100;

	if (sc->cpuport != -1)
		/* Always attach the cpu port. */
		sc->phymask |= (1 << sc->cpuport);

	/* We do not support any vlan groups. */
	sc->info.es_nvlangroups = 0;

	sc->ifp = FUNC8(sizeof(struct ifnet *) * sc->numports, M_UKSWITCH,
	    M_WAITOK | M_ZERO);
	sc->ifname = FUNC8(sizeof(char *) * sc->numports, M_UKSWITCH,
	    M_WAITOK | M_ZERO);
	sc->miibus = FUNC8(sizeof(device_t *) * sc->numports, M_UKSWITCH,
	    M_WAITOK | M_ZERO);
	sc->portphy = FUNC8(sizeof(int) * sc->numports, M_UKSWITCH,
	    M_WAITOK | M_ZERO);

	/*
	 * Attach the PHYs and complete the bus enumeration.
	 */
	err = FUNC12(sc);
	if (err != 0)
		return (err);

	FUNC2(dev);
	FUNC0(dev);
	err = FUNC1(dev);
	if (err != 0)
		return (err);
	
	FUNC3(&sc->callout_tick, 0);

	FUNC13(sc);
	
	return (err);
}