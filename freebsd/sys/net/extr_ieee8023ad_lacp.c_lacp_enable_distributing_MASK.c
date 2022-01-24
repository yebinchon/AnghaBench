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
struct lagg_softc {scalar_t__ sc_active; int /*<<< orphan*/  sc_ifp; } ;
struct lacp_softc {struct lacp_aggregator* lsc_active_aggregator; struct lagg_softc* lsc_softc; } ;
struct lacp_port {int lp_state; struct lacp_softc* lp_lsc; struct lacp_aggregator* lp_aggregator; } ;
struct lacp_aggregator {scalar_t__ la_nports; scalar_t__ la_refcnt; int /*<<< orphan*/  la_ports; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*) ; 
 int /*<<< orphan*/  LACP_LAGIDSTR_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*) ; 
 int LACP_STATE_DISTRIBUTING ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lacp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lacp_aggregator*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct lacp_softc*,struct lacp_aggregator*) ; 
 int /*<<< orphan*/  FUNC8 (struct lacp_softc*) ; 
 int /*<<< orphan*/  lp_dist_q ; 

__attribute__((used)) static void
FUNC9(struct lacp_port *lp)
{
	struct lacp_aggregator *la = lp->lp_aggregator;
	struct lacp_softc *lsc = lp->lp_lsc;
	struct lagg_softc *sc = lsc->lsc_softc;
	char buf[LACP_LAGIDSTR_MAX+1];

	FUNC2(lsc);

	if ((lp->lp_state & LACP_STATE_DISTRIBUTING) != 0) {
		return;
	}

	FUNC1((lp, "enable distributing on aggregator %s, "
	    "nports %d -> %d\n",
	    FUNC5(la, buf, sizeof(buf)),
	    la->la_nports, la->la_nports + 1));

	FUNC0(la->la_refcnt > la->la_nports, ("aggregator refcnt invalid"));
	FUNC3(&la->la_ports, lp, lp_dist_q);
	la->la_nports++;
	sc->sc_active = la->la_nports;

	lp->lp_state |= LACP_STATE_DISTRIBUTING;

	if (lsc->lsc_active_aggregator == la) {
		FUNC7(lsc, la);
		FUNC8(lsc);
	} else
		/* try to become the active aggregator */
		FUNC6(lsc);

	FUNC4(sc->sc_ifp,
	    sc->sc_active ? LINK_STATE_UP : LINK_STATE_DOWN);
}