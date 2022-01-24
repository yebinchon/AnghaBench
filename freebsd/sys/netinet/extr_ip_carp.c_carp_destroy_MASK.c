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
struct carp_softc {struct carp_softc* sc_ifas; int /*<<< orphan*/  sc_md6_tmo; int /*<<< orphan*/  sc_md_tmo; int /*<<< orphan*/  sc_ad_tmo; scalar_t__ sc_suppress; struct ifnet* sc_carpdev; } ;
struct carp_if {int /*<<< orphan*/  cif_vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct carp_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct carp_if*) ; 
 int /*<<< orphan*/  FUNC4 (struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CARP ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_carp_ifdown_adj ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  carp_mtx ; 
 int /*<<< orphan*/  carp_sx ; 
 int /*<<< orphan*/  FUNC8 (struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc_list ; 
 int /*<<< orphan*/  sc_next ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct carp_softc *sc)
{
	struct ifnet *ifp = sc->sc_carpdev;
	struct carp_if *cif = ifp->if_carp;

	FUNC11(&carp_sx, SA_XLOCKED);

	if (sc->sc_suppress)
		FUNC7(-V_carp_ifdown_adj, "vhid removed");
	FUNC1(sc);

	FUNC2(cif);
	FUNC5(&cif->cif_vrs, sc, sc_list);
	FUNC3(cif);

	FUNC9(&carp_mtx);
	FUNC4(sc, sc_next);
	FUNC10(&carp_mtx);

	FUNC6(&sc->sc_ad_tmo);
#ifdef INET
	callout_drain(&sc->sc_md_tmo);
#endif
#ifdef INET6
	callout_drain(&sc->sc_md6_tmo);
#endif
	FUNC0(sc);

	FUNC8(sc->sc_ifas, M_CARP);
	FUNC8(sc, M_CARP);
}