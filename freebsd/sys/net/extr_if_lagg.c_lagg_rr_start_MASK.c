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
typedef  int /*<<< orphan*/  uint32_t ;
struct mbuf {int dummy; } ;
struct lagg_softc {scalar_t__ sc_bkt_count; scalar_t__ sc_bkt; int /*<<< orphan*/  sc_ports; int /*<<< orphan*/  sc_count; int /*<<< orphan*/  sc_seq; } ;
struct lagg_port {int /*<<< orphan*/  lp_ifp; } ;

/* Variables and functions */
 struct lagg_port* FUNC0 (int /*<<< orphan*/ *) ; 
 struct lagg_port* FUNC1 (struct lagg_port*,int /*<<< orphan*/ ) ; 
 int ENETDOWN ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct mbuf*) ; 
 struct lagg_port* FUNC6 (struct lagg_softc*,struct lagg_port*) ; 
 int /*<<< orphan*/  lp_entries ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC8(struct lagg_softc *sc, struct mbuf *m)
{
	struct lagg_port *lp;
	uint32_t p;

	if (sc->sc_bkt_count == 0 && sc->sc_bkt > 0)
		sc->sc_bkt_count = sc->sc_bkt;

	if (sc->sc_bkt > 0) {
		FUNC4(&sc->sc_bkt_count, 1);
	if (FUNC2(&sc->sc_bkt_count, 0, sc->sc_bkt))
		p = FUNC3(&sc->sc_seq, 1);
	else
		p = sc->sc_seq; 
	} else
		p = FUNC3(&sc->sc_seq, 1);

	p %= sc->sc_count;
	lp = FUNC0(&sc->sc_ports);

	while (p--)
		lp = FUNC1(lp, lp_entries);

	/*
	 * Check the port's link state. This will return the next active
	 * port if the link is down or the port is NULL.
	 */
	if ((lp = FUNC6(sc, lp)) == NULL) {
		FUNC7(m);
		return (ENETDOWN);
	}

	/* Send mbuf */
	return (FUNC5(lp->lp_ifp, m));
}