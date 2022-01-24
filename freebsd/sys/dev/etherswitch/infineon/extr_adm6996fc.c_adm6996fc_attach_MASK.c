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
struct ifnet {int dummy; } ;
struct TYPE_2__ {int es_nvlangroups; int es_vlan_caps; int /*<<< orphan*/  es_name; } ;
struct adm6996fc_softc {int numports; int phymask; int cpuport; int media; int /*<<< orphan*/ * ifp; int /*<<< orphan*/ * ifname; int /*<<< orphan*/ * miibus; int /*<<< orphan*/ * portphy; int /*<<< orphan*/  callout_tick; TYPE_1__ info; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ETHERSWITCH_VLAN_DOT1Q ; 
 int ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_ADM6996FC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (struct adm6996fc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996fc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct adm6996fc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct adm6996fc_softc	*sc;
	int			 err;

	err = 0;
	sc = FUNC7(dev);

	sc->sc_dev = dev;
	FUNC10(&sc->sc_mtx, "adm6996fc", NULL, MTX_DEF);
	FUNC11(sc->info.es_name, FUNC6(dev),
	    sizeof(sc->info.es_name));

	/* ADM6996FC Defaults */
	sc->numports = 6;
	sc->phymask = 0x1f;
	sc->cpuport = 5;
	sc->media = 100;

	sc->info.es_nvlangroups = 16;
	sc->info.es_vlan_caps = ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOT1Q;

	sc->ifp = FUNC9(sizeof(struct ifnet *) * sc->numports, M_ADM6996FC,
	    M_WAITOK | M_ZERO);
	sc->ifname = FUNC9(sizeof(char *) * sc->numports, M_ADM6996FC,
	    M_WAITOK | M_ZERO);
	sc->miibus = FUNC9(sizeof(device_t *) * sc->numports, M_ADM6996FC,
	    M_WAITOK | M_ZERO);
	sc->portphy = FUNC9(sizeof(int) * sc->numports, M_ADM6996FC,
	    M_WAITOK | M_ZERO);

	if (sc->ifp == NULL || sc->ifname == NULL || sc->miibus == NULL ||
	    sc->portphy == NULL) {
		err = ENOMEM;
		goto failed;
	}

	/*
	 * Attach the PHYs and complete the bus enumeration.
	 */
	err = FUNC0(sc);
	if (err != 0)
		goto failed;

	FUNC4(dev);
	FUNC2(dev);
	err = FUNC3(dev);
	if (err != 0)
		goto failed;
	
	FUNC5(&sc->callout_tick, 0);

	FUNC1(sc);
	
	return (0);

failed:
	if (sc->portphy != NULL)
		FUNC8(sc->portphy, M_ADM6996FC);
	if (sc->miibus != NULL)
		FUNC8(sc->miibus, M_ADM6996FC);
	if (sc->ifname != NULL)
		FUNC8(sc->ifname, M_ADM6996FC);
	if (sc->ifp != NULL)
		FUNC8(sc->ifp, M_ADM6996FC);

	return (err);
}