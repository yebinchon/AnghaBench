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
struct pfsync_softc {int sc_bulk_hashid; scalar_t__ sc_ureq_received; int /*<<< orphan*/  sc_bulk_tmo; int /*<<< orphan*/  sc_bulk_creatorid; int /*<<< orphan*/  sc_bulk_stateid; TYPE_1__* sc_ifp; } ;
struct pf_state {scalar_t__ sync_state; scalar_t__ timeout; scalar_t__ pfsync_time; int /*<<< orphan*/  creatorid; int /*<<< orphan*/  id; } ;
struct pf_idhash {int /*<<< orphan*/  states; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pf_state* FUNC2 (int /*<<< orphan*/ *) ; 
 struct pf_state* FUNC3 (struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  PFSYNC_BUS_END ; 
 scalar_t__ PFSYNC_S_NONE ; 
 scalar_t__ PFTM_MAX ; 
 int /*<<< orphan*/  FUNC5 (struct pf_idhash*) ; 
 int /*<<< orphan*/  FUNC6 (struct pf_idhash*) ; 
 int /*<<< orphan*/  FUNC7 (struct pf_idhash*) ; 
 int FUNC8 (struct pf_state*) ; 
 struct pf_idhash* V_pf_idhash ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,void (*) (void*),struct pfsync_softc*) ; 
 int /*<<< orphan*/  entry ; 
 struct pf_state* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pf_hashmask ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct pf_state*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct pfsync_softc *sc = arg;
	struct pf_state *s;
	int i, sent = 0;

	FUNC4(sc);
	FUNC1(sc->sc_ifp->if_vnet);

	/*
	 * Start with last state from previous invocation.
	 * It may had gone, in this case start from the
	 * hash slot.
	 */
	s = FUNC10(sc->sc_bulk_stateid, sc->sc_bulk_creatorid);

	if (s != NULL)
		i = FUNC8(s);
	else
		i = sc->sc_bulk_hashid;

	for (; i <= pf_hashmask; i++) {
		struct pf_idhash *ih = &V_pf_idhash[i];

		if (s != NULL)
			FUNC5(ih);
		else {
			FUNC6(ih);
			s = FUNC2(&ih->states);
		}

		for (; s; s = FUNC3(s, entry)) {
			if (s->sync_state == PFSYNC_S_NONE &&
			    s->timeout < PFTM_MAX &&
			    s->pfsync_time <= sc->sc_ureq_received) {
				if (FUNC12(s)) {
					/* We've filled a packet. */
					sc->sc_bulk_hashid = i;
					sc->sc_bulk_stateid = s->id;
					sc->sc_bulk_creatorid = s->creatorid;
					FUNC7(ih);
					FUNC9(&sc->sc_bulk_tmo, 1,
					    pfsync_bulk_update, sc);
					goto full;
				}
				sent++;
			}
		}
		FUNC7(ih);
	}

	/* We're done. */
	FUNC11(PFSYNC_BUS_END);
full:
	FUNC0();
}