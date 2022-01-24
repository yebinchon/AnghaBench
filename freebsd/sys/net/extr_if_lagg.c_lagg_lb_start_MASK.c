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
typedef  size_t uint32_t ;
struct TYPE_2__ {size_t flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lagg_softc {int sc_opts; size_t flowid_shift; size_t sc_count; int /*<<< orphan*/  sc_flags; scalar_t__ sc_psc; } ;
struct lagg_port {int /*<<< orphan*/  lp_ifp; } ;
struct lagg_lb {struct lagg_port** lb_ports; int /*<<< orphan*/  lb_key; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int LAGG_OPT_USE_FLOWID ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mbuf*) ; 
 struct lagg_port* FUNC2 (struct lagg_softc*,struct lagg_port*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC5(struct lagg_softc *sc, struct mbuf *m)
{
	struct lagg_lb *lb = (struct lagg_lb *)sc->sc_psc;
	struct lagg_port *lp = NULL;
	uint32_t p = 0;

	if ((sc->sc_opts & LAGG_OPT_USE_FLOWID) &&
	    FUNC0(m) != M_HASHTYPE_NONE)
		p = m->m_pkthdr.flowid >> sc->flowid_shift;
	else
		p = FUNC3(sc->sc_flags, m, lb->lb_key);
	p %= sc->sc_count;
	lp = lb->lb_ports[p];

	/*
	 * Check the port's link state. This will return the next active
	 * port if the link is down or the port is NULL.
	 */
	if ((lp = FUNC2(sc, lp)) == NULL) {
		FUNC4(m);
		return (ENETDOWN);
	}

	/* Send mbuf */
	return (FUNC1(lp->lp_ifp, m));
}