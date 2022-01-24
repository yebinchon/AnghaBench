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
struct ifnet {int if_flags; int /*<<< orphan*/  if_pcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_PPROMISC ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*,char*) ; 
 int FUNC1 (struct ifnet*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ log_promisc_mode_change ; 

int
FUNC2(struct ifnet *ifp, int pswitch)
{
	int error;
	int oldflags = ifp->if_flags;

	error = FUNC1(ifp, IFF_PROMISC, IFF_PPROMISC,
			   &ifp->if_pcount, pswitch);
	/* If promiscuous mode status has changed, log a message */
	if (error == 0 && ((ifp->if_flags ^ oldflags) & IFF_PROMISC) &&
            log_promisc_mode_change)
		FUNC0(ifp, "promiscuous mode %s\n",
		    (ifp->if_flags & IFF_PROMISC) ? "enabled" : "disabled");
	return (error);
}