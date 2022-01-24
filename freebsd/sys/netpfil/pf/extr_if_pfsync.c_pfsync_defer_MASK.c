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
struct pfsync_softc {int sc_flags; TYPE_1__* sc_ifp; } ;
struct pfsync_deferral {int /*<<< orphan*/  pd_tmo; struct mbuf* pd_m; struct pf_state* pd_st; scalar_t__ pd_refs; struct pfsync_softc* pd_sc; } ;
struct pfsync_bucket {int b_deferred; int /*<<< orphan*/  b_mtx; int /*<<< orphan*/  b_deferrals; } ;
struct pf_state {int /*<<< orphan*/  state_flags; } ;
struct mbuf {int m_flags; } ;
struct TYPE_2__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_RETURNUNLOCKED ; 
 int IFF_DRV_RUNNING ; 
 int M_BCAST ; 
 int M_MCAST ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PFSYNC ; 
 int M_SKIP_FIREWALL ; 
 int /*<<< orphan*/  PFSTATE_ACK ; 
 int PFSYNCF_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pfsync_deferral*,int /*<<< orphan*/ ) ; 
 struct pfsync_softc* V_pfsyncif ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct pfsync_deferral*) ; 
 struct pfsync_deferral* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pd_entry ; 
 int /*<<< orphan*/  FUNC7 (struct pf_state*) ; 
 int /*<<< orphan*/  pfsync_defer_tmo ; 
 struct pfsync_bucket* FUNC8 (struct pfsync_softc*,struct pf_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct pf_state *st, struct mbuf *m)
{
	struct pfsync_softc *sc = V_pfsyncif;
	struct pfsync_deferral *pd;
	struct pfsync_bucket *b = FUNC8(sc, st);

	if (m->m_flags & (M_BCAST|M_MCAST))
		return (0);

	FUNC0(sc);

	if (sc == NULL || !(sc->sc_ifp->if_flags & IFF_DRV_RUNNING) ||
	    !(sc->sc_flags & PFSYNCF_DEFER)) {
		FUNC1(sc);
		return (0);
	}

	if (b->b_deferred >= 128)
		FUNC10(FUNC2(&b->b_deferrals), 0);

	pd = FUNC6(sizeof(*pd), M_PFSYNC, M_NOWAIT);
	if (pd == NULL)
		return (0);
	b->b_deferred++;

	m->m_flags |= M_SKIP_FIREWALL;
	st->state_flags |= PFSTATE_ACK;

	pd->pd_sc = sc;
	pd->pd_refs = 0;
	pd->pd_st = st;
	FUNC7(st);
	pd->pd_m = m;

	FUNC3(&b->b_deferrals, pd, pd_entry);
	FUNC4(&pd->pd_tmo, &b->b_mtx, CALLOUT_RETURNUNLOCKED);
	FUNC5(&pd->pd_tmo, 10, pfsync_defer_tmo, pd);

	FUNC9(b);

	return (1);
}