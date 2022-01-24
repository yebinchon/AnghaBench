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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* ip17x_set_vlan_mode ) (struct ip17x_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ip17x_reset ) (struct ip17x_softc*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  es_nvlangroups; int /*<<< orphan*/  es_name; } ;
struct ip17x_softc {int phymask; int media; int cpuport; int numports; int /*<<< orphan*/  callout_tick; scalar_t__ miipoll; TYPE_2__ hal; void* portphy; void* miibus; void* pvid; void* ifp; TYPE_1__ info; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  IP175C ; 
 int /*<<< orphan*/  IP175D ; 
 scalar_t__ FUNC0 (struct ip17x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP17X_MAX_VLANS ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_IP17X ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ip17x_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ip17x_softc*) ; 
 int FUNC11 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ip17x_softc*) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ip17x_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct ip17x_softc *sc;
	int err;

	sc = FUNC7(dev);

	sc->sc_dev = dev;
	FUNC14(&sc->sc_mtx, "ip17x", NULL, MTX_DEF);
	FUNC16(sc->info.es_name, FUNC5(dev),
	    sizeof(sc->info.es_name));

	/* XXX Defaults */
	sc->phymask = 0x0f;
	sc->media = 100;

	(void) FUNC15(FUNC6(dev), FUNC8(dev),
	    "phymask", &sc->phymask);

	/* Number of vlans supported by the switch. */
	sc->info.es_nvlangroups = IP17X_MAX_VLANS;

	/* Attach the switch related functions. */
	if (FUNC0(sc, IP175C))
		FUNC9(sc);
	else if (FUNC0(sc, IP175D))
		FUNC10(sc);
	else
		/* We don't have support to all the models yet :-/ */
		return (ENXIO);

	/* Always attach the cpu port. */
	sc->phymask |= (1 << sc->cpuport);

	sc->ifp = FUNC13(sizeof(struct ifnet *) * sc->numports, M_IP17X,
	    M_WAITOK | M_ZERO);
	sc->pvid = FUNC13(sizeof(uint32_t) * sc->numports, M_IP17X,
	    M_WAITOK | M_ZERO);
	sc->miibus = FUNC13(sizeof(device_t *) * sc->numports, M_IP17X,
	    M_WAITOK | M_ZERO);
	sc->portphy = FUNC13(sizeof(int) * sc->numports, M_IP17X,
	    M_WAITOK | M_ZERO);

	/* Initialize the switch. */
	sc->hal.ip17x_reset(sc);

	/*
	 * Attach the PHYs and complete the bus enumeration.
	 */
	err = FUNC11(sc);
	if (err != 0)
		return (err);

	/*
	 * Set the switch to port based vlans or disabled (if not supported
	 * on this model).
	 */
	sc->hal.ip17x_set_vlan_mode(sc, ETHERSWITCH_VLAN_PORT);

	FUNC3(dev);
	FUNC1(dev);
	err = FUNC2(dev);
	if (err != 0)
		return (err);
	
	if (sc->miipoll) {
		FUNC4(&sc->callout_tick, 0);

		FUNC12(sc);
	}
	
	return (0);
}