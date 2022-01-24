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
struct in_multi {struct ifmultiaddr* inm_ifma; struct ifnet* inm_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; scalar_t__ ifma_refcount; struct ifnet* ifma_ifp; struct ifmultiaddr* ifma_llifma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ifmultiaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFMA_F_ENQUEUED ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ifmultiaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  ifma_link ; 
 int ifma_restart ; 
 int /*<<< orphan*/  ifmultiaddr ; 

void
FUNC6(struct in_multi *inm)
{
	struct ifnet *ifp;
	struct ifmultiaddr *ifma, *ll_ifma;

	ifp = inm->inm_ifp;
	FUNC1(ifp);
	ifma = inm->inm_ifma;

	FUNC5(ifp);
	if (ifma->ifma_flags & IFMA_F_ENQUEUED) {
		FUNC0(&ifp->if_multiaddrs, ifma, ifmultiaddr, ifma_link);
		ifma->ifma_flags &= ~IFMA_F_ENQUEUED;
	}
	FUNC2("removed ifma: %p from %s\n", ifma, ifp->if_xname);
	if ((ll_ifma = ifma->ifma_llifma) != NULL) {
		FUNC3(ifma != ll_ifma);
		ifma->ifma_llifma = NULL;
		FUNC3(ll_ifma->ifma_llifma == NULL);
		FUNC3(ll_ifma->ifma_ifp == ifp);
		if (--ll_ifma->ifma_refcount == 0) {
			if (ll_ifma->ifma_flags & IFMA_F_ENQUEUED) {
				FUNC0(&ifp->if_multiaddrs, ll_ifma, ifmultiaddr, ifma_link);
				ll_ifma->ifma_flags &= ~IFMA_F_ENQUEUED;
			}
			FUNC2("removed ll_ifma: %p from %s\n", ll_ifma, ifp->if_xname);
			FUNC4(ll_ifma);
			ifma_restart = true;
		}
	}
}