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
struct pfsync_softc {int sc_flags; scalar_t__ sc_bulk_tries; scalar_t__ sc_ureq_sent; int /*<<< orphan*/  sc_bulkfail_tmo; TYPE_1__* sc_ifp; struct pfsync_bucket* sc_buckets; } ;
struct pfsync_bucket {int dummy; } ;
struct TYPE_4__ {scalar_t__ debug; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PFSYNCF_OK ; 
 int /*<<< orphan*/  FUNC2 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfsync_softc*) ; 
 scalar_t__ PFSYNC_MAX_BULKTRIES ; 
 int /*<<< orphan*/  FUNC6 (struct pfsync_softc*) ; 
 scalar_t__ PF_DEBUG_MISC ; 
 TYPE_2__ V_pf_status ; 
 int /*<<< orphan*/  V_pfsync_carp_adj ; 
 int /*<<< orphan*/  V_pfsyncif ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct pfsync_softc *sc = arg;
	struct pfsync_bucket *b = &sc->sc_buckets[0];

	FUNC1(sc->sc_ifp->if_vnet);

	FUNC2(sc);

	if (sc->sc_bulk_tries++ < PFSYNC_MAX_BULKTRIES) {
		/* Try again */
		FUNC7(&sc->sc_bulkfail_tmo, 5 * hz,
		    pfsync_bulk_fail, V_pfsyncif);
		FUNC3(b);
		FUNC9(0, 0);
		FUNC4(b);
	} else {
		/* Pretend like the transfer was ok. */
		sc->sc_ureq_sent = 0;
		sc->sc_bulk_tries = 0;
		FUNC5(sc);
		if (!(sc->sc_flags & PFSYNCF_OK) && &carp_demote_adj_p)
			FUNC8)(-V_pfsync_carp_adj,
			    "pfsync bulk fail");
		sc->sc_flags |= PFSYNCF_OK;
		FUNC6(sc);
		if (V_pf_status.debug >= PF_DEBUG_MISC)
			FUNC10("pfsync: failed to receive bulk update\n");
	}

	FUNC0();
}