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
struct carp_softc {int sc_suppress; int /*<<< orphan*/  sc_md6_tmo; int /*<<< orphan*/  sc_md_tmo; int /*<<< orphan*/  sc_ad_tmo; TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {scalar_t__ if_link_state; int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  INIT ; 
 scalar_t__ LINK_STATE_UP ; 
 int /*<<< orphan*/  V_carp_allow ; 
 int /*<<< orphan*/  V_carp_ifdown_adj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct carp_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct carp_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct carp_softc *sc)
{

	FUNC0(sc);

	if (sc->sc_carpdev->if_link_state != LINK_STATE_UP ||
	    !(sc->sc_carpdev->if_flags & IFF_UP) ||
	    !V_carp_allow) {
		FUNC1(&sc->sc_ad_tmo);
#ifdef INET
		callout_stop(&sc->sc_md_tmo);
#endif
#ifdef INET6
		callout_stop(&sc->sc_md6_tmo);
#endif
		FUNC3(sc, INIT, "hardware interface down");
		FUNC4(sc, 0);
		if (!sc->sc_suppress)
			FUNC2(V_carp_ifdown_adj, "interface down");
		sc->sc_suppress = 1;
	} else {
		FUNC3(sc, INIT, "hardware interface up");
		FUNC4(sc, 0);
		if (sc->sc_suppress)
			FUNC2(-V_carp_ifdown_adj, "interface up");
		sc->sc_suppress = 0;
	}
}