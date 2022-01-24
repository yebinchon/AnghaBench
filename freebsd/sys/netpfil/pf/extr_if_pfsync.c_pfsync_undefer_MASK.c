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
struct pfsync_softc {int dummy; } ;
struct pfsync_deferral {struct pf_state* pd_st; struct mbuf* pd_m; struct pfsync_softc* pd_sc; } ;
struct pfsync_bucket {int /*<<< orphan*/  b_snd; int /*<<< orphan*/  b_deferred; int /*<<< orphan*/  b_deferrals; } ;
struct pf_state {int /*<<< orphan*/  state_flags; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PFSYNC ; 
 int /*<<< orphan*/  PFSTATE_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pfsync_deferral*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfsync_deferral*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  pd_entry ; 
 int /*<<< orphan*/  FUNC5 (struct pf_state*) ; 
 struct pfsync_bucket* FUNC6 (struct pfsync_softc*,struct pf_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct pfsync_bucket*) ; 

__attribute__((used)) static void
FUNC8(struct pfsync_deferral *pd, int drop)
{
	struct pfsync_softc *sc = pd->pd_sc;
	struct mbuf *m = pd->pd_m;
	struct pf_state *st = pd->pd_st;
	struct pfsync_bucket *b = FUNC6(sc, st);

	FUNC0(b);

	FUNC1(&b->b_deferrals, pd, pd_entry);
	b->b_deferred--;
	pd->pd_st->state_flags &= ~PFSTATE_ACK;	/* XXX: locking! */
	FUNC3(pd, M_PFSYNC);
	FUNC5(st);

	if (drop)
		FUNC4(m);
	else {
		FUNC2(&b->b_snd, m);
		FUNC7(b);
	}
}