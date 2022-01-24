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
struct pfsync_softc {scalar_t__ b_deferred; int sc_flags; struct pfsync_softc* sc_buckets; int /*<<< orphan*/  sc_bulk_mtx; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_bulk_tmo; int /*<<< orphan*/  sc_bulkfail_tmo; int /*<<< orphan*/  b_tmo; int /*<<< orphan*/  pd_tmo; int /*<<< orphan*/  pd_refs; int /*<<< orphan*/  pd_m; int /*<<< orphan*/  pd_st; int /*<<< orphan*/  b_deferrals; } ;
struct pfsync_deferral {scalar_t__ b_deferred; int sc_flags; struct pfsync_deferral* sc_buckets; int /*<<< orphan*/  sc_bulk_mtx; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_bulk_tmo; int /*<<< orphan*/  sc_bulkfail_tmo; int /*<<< orphan*/  b_tmo; int /*<<< orphan*/  pd_tmo; int /*<<< orphan*/  pd_refs; int /*<<< orphan*/  pd_m; int /*<<< orphan*/  pd_st; int /*<<< orphan*/  b_deferrals; } ;
struct pfsync_bucket {scalar_t__ b_deferred; int sc_flags; struct pfsync_bucket* sc_buckets; int /*<<< orphan*/  sc_bulk_mtx; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_bulk_tmo; int /*<<< orphan*/  sc_bulkfail_tmo; int /*<<< orphan*/  b_tmo; int /*<<< orphan*/  pd_tmo; int /*<<< orphan*/  pd_refs; int /*<<< orphan*/  pd_m; int /*<<< orphan*/  pd_st; int /*<<< orphan*/  b_deferrals; } ;
struct ifnet {struct pfsync_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PFSYNC ; 
 int PFSYNCF_OK ; 
 struct pfsync_softc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pfsync_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pfsync_carp_adj ; 
 int /*<<< orphan*/ * V_pfsyncif ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct pfsync_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_entry ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int pfsync_buckets ; 
 int /*<<< orphan*/  FUNC12 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC15(struct ifnet *ifp)
{
	struct pfsync_softc *sc = ifp->if_softc;
	struct pfsync_bucket *b;
	int c;

	for (c = 0; c < pfsync_buckets; c++) {
		b = &sc->sc_buckets[c];
		/*
		 * At this stage, everything should have already been
		 * cleared by pfsync_uninit(), and we have only to
		 * drain callouts.
		 */
		while (b->b_deferred > 0) {
			struct pfsync_deferral *pd =
			    FUNC0(&b->b_deferrals);

			FUNC1(&b->b_deferrals, pd, pd_entry);
			b->b_deferred--;
			if (FUNC4(&pd->pd_tmo) > 0) {
				FUNC11(pd->pd_st);
				FUNC9(pd->pd_m);
				FUNC6(pd, M_PFSYNC);
			} else {
				pd->pd_refs++;
				FUNC3(&pd->pd_tmo);
				FUNC6(pd, M_PFSYNC);
			}
		}

		FUNC3(&b->b_tmo);
	}

	FUNC3(&sc->sc_bulkfail_tmo);
	FUNC3(&sc->sc_bulk_tmo);

	if (!(sc->sc_flags & PFSYNCF_OK) && &carp_demote_adj_p)
		FUNC5)(-V_pfsync_carp_adj, "pfsync destroy");
	FUNC2(ifp);
	FUNC7(ifp);

	FUNC12(sc);

	FUNC8(ifp);
	FUNC13(sc);
	FUNC10(&sc->sc_mtx);
	FUNC10(&sc->sc_bulk_mtx);

	FUNC6(sc->sc_buckets, M_PFSYNC);
	FUNC6(sc, M_PFSYNC);

	V_pfsyncif = NULL;
}