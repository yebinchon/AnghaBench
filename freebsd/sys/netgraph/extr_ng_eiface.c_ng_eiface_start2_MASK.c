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
struct mbuf {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_softc; } ;
typedef  TYPE_1__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_2__ {int /*<<< orphan*/  ether; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int IFF_MONITOR ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(node_p node, hook_p hook, void *arg1, int arg2)
{
	struct ifnet *ifp = arg1;
	const priv_p priv = (priv_p)ifp->if_softc;
	int error = 0;
	struct mbuf *m;

	/* Check interface flags */

	if (!((ifp->if_flags & IFF_UP) &&
	    (ifp->if_drv_flags & IFF_DRV_RUNNING)))
		return;

	for (;;) {
		/*
		 * Grab a packet to transmit.
		 */
		FUNC1(&ifp->if_snd, m);

		/* If there's nothing to send, break. */
		if (m == NULL)
			break;

		/* Peel the mbuf off any stale tags */
		FUNC7(m, NULL);

		/*
		 * Berkeley packet filter.
		 * Pass packet to bpf if there is a listener.
		 * XXX is this safe? locking?
		 */
		FUNC0(ifp, m);

		if (ifp->if_flags & IFF_MONITOR) {
			FUNC5(ifp, IFCOUNTER_IPACKETS, 1);
			FUNC6(m);
			continue;
		}

		/*
		 * Send packet; if hook is not connected, mbuf will get
		 * freed.
		 */
		FUNC2();
		FUNC4(error, priv->ether, m);
		FUNC3();

		/* Update stats */
		if (error == 0)
			FUNC5(ifp, IFCOUNTER_OPACKETS, 1);
		else
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);
	}

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	return;
}