#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifnet {struct carp_if* if_carp; } ;
struct ifaddr {int dummy; } ;
struct carp_softc {int sc_vhid; int sc_init_counter; int sc_ifasiz; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_ad_tmo; int /*<<< orphan*/  sc_md6_tmo; int /*<<< orphan*/  sc_md_tmo; struct ifnet* sc_carpdev; void* sc_ifas; int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_advbase; } ;
struct carp_if {int /*<<< orphan*/  cif_vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_RETURNUNLOCKED ; 
 int /*<<< orphan*/  CARP_DFLTINTV ; 
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct carp_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct carp_if*) ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CARP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct carp_if* FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  carp_list ; 
 int /*<<< orphan*/  carp_mtx ; 
 int /*<<< orphan*/  carp_sx ; 
 void* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc_list ; 
 int /*<<< orphan*/  sc_next ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct carp_softc*
FUNC11(struct ifnet *ifp)
{
	struct carp_softc *sc;
	struct carp_if *cif;

	FUNC10(&carp_sx, SA_XLOCKED);

	if ((cif = ifp->if_carp) == NULL)
		cif = FUNC6(ifp);

	sc = FUNC7(sizeof(*sc), M_CARP, M_WAITOK|M_ZERO);

	sc->sc_advbase = CARP_DFLTINTV;
	sc->sc_vhid = -1;	/* required setting */
	sc->sc_init_counter = 1;
	sc->sc_state = INIT;

	sc->sc_ifasiz = sizeof(struct ifaddr *);
	sc->sc_ifas = FUNC7(sc->sc_ifasiz, M_CARP, M_WAITOK|M_ZERO);
	sc->sc_carpdev = ifp;

	FUNC0(sc);
#ifdef INET
	callout_init_mtx(&sc->sc_md_tmo, &sc->sc_mtx, CALLOUT_RETURNUNLOCKED);
#endif
#ifdef INET6
	callout_init_mtx(&sc->sc_md6_tmo, &sc->sc_mtx, CALLOUT_RETURNUNLOCKED);
#endif
	FUNC5(&sc->sc_ad_tmo, &sc->sc_mtx, CALLOUT_RETURNUNLOCKED);

	FUNC1(cif);
	FUNC4(&cif->cif_vrs, sc, sc_list);
	FUNC2(cif);

	FUNC8(&carp_mtx);
	FUNC3(&carp_list, sc, sc_next);
	FUNC9(&carp_mtx);

	return (sc);
}