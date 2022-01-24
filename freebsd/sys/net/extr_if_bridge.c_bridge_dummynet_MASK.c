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
struct mbuf {int dummy; } ;
struct ifnet {struct bridge_softc* if_bridge; } ;
struct bridge_softc {int /*<<< orphan*/  sc_ifp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PFIL_OUT ; 
 int /*<<< orphan*/  V_inet6_pfil_head ; 
 int /*<<< orphan*/  V_inet_pfil_head ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*,struct ifnet*,struct mbuf*) ; 
 scalar_t__ FUNC2 (struct mbuf**,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC4(struct mbuf *m, struct ifnet *ifp)
{
	struct bridge_softc *sc;

	sc = ifp->if_bridge;

	/*
	 * The packet didnt originate from a member interface. This should only
	 * ever happen if a member interface is removed while packets are
	 * queued for it.
	 */
	if (sc == NULL) {
		FUNC3(m);
		return;
	}

	if (FUNC0(V_inet_pfil_head)
#ifdef INET6
	    || PFIL_HOOKED_OUT(V_inet6_pfil_head)
#endif
	    ) {
		if (FUNC2(&m, sc->sc_ifp, ifp, PFIL_OUT) != 0)
			return;
		if (m == NULL)
			return;
	}

	FUNC1(sc, ifp, m);
}