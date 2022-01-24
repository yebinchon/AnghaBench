#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * t_Handle ;
struct TYPE_5__ {unsigned int swPortalId; uintptr_t irq; int /*<<< orphan*/  h_Bm; void* ciBaseAddress; void* ceBaseAddress; } ;
typedef  TYPE_2__ t_BmPortalParam ;
struct dpaa_portals_softc {TYPE_1__* sc_dp; int /*<<< orphan*/ * sc_rres; } ;
struct bman_softc {int /*<<< orphan*/  sc_bh; } ;
struct TYPE_4__ {int /*<<< orphan*/  dp_ph; scalar_t__ dp_ires; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_OK ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_VOL ; 
 scalar_t__ FUNC4 (uintptr_t*,int /*<<< orphan*/ ,int) ; 
 uintptr_t FUNC5 (uintptr_t*) ; 
 int /*<<< orphan*/  FUNC6 (uintptr_t*,uintptr_t) ; 
 struct dpaa_portals_softc* bp_sc ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa_portals_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

t_Handle
FUNC14(struct bman_softc *bsc)
{
	struct dpaa_portals_softc *sc;
	t_BmPortalParam bpp;
	t_Handle portal;
	unsigned int cpu;
	uintptr_t p;

	/* Return NULL if we're not ready or while detach */
	if (bp_sc == NULL)
		return (NULL);

	sc = bp_sc;

	FUNC10();
	portal = NULL;
	cpu = FUNC3(cpuid);

	/* Check if portal is ready */
	while (FUNC4((uintptr_t *)&sc->sc_dp[cpu].dp_ph,
	    0, -1) == 0) {
		p = FUNC5((uintptr_t *)&sc->sc_dp[cpu].dp_ph);

		/* Return if portal is already initialized */
		if (p != 0 && p != -1) {
			FUNC11();
			return ((t_Handle)p);
		}

		/* Not inititialized and "owned" by another thread */
		FUNC12(curthread);
		FUNC8(SW_VOL, NULL);
		FUNC13(curthread);
	}

	/* Map portal registers */
	FUNC7(sc);

	/* Configure and initialize portal */
	bpp.ceBaseAddress = FUNC9(sc->sc_rres[0]);
	bpp.ciBaseAddress = FUNC9(sc->sc_rres[1]);
	bpp.h_Bm = bsc->sc_bh;
	bpp.swPortalId = cpu;
	bpp.irq = (uintptr_t)sc->sc_dp[cpu].dp_ires;

	portal = FUNC0(&bpp);
	if (portal == NULL)
		goto err;

	if (FUNC2(portal) != E_OK)
		goto err;

	FUNC6((uintptr_t *)&sc->sc_dp[cpu].dp_ph, (uintptr_t)portal);
	
	FUNC11();

	return (portal);

err:
	if (portal != NULL)
		FUNC1(portal);

	FUNC6((uintptr_t *)&sc->sc_dp[cpu].dp_ph, 0);
	FUNC11();

	return (NULL);
}