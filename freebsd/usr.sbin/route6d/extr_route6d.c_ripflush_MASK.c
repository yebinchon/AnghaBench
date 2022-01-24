#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_port; } ;
struct netinfo6 {scalar_t__ rip6_metric; scalar_t__ rip6_tag; int /*<<< orphan*/  rip6_plen; int /*<<< orphan*/  rip6_dest; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct ifc {int /*<<< orphan*/  ifc_flags; TYPE_1__ ifc_ripsin; int /*<<< orphan*/  ifc_name; } ;
struct TYPE_4__ {struct netinfo6* rip6_nets; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  IFF_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NEXTHOP_METRIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_2__* ripbuf ; 
 int FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 

__attribute__((used)) static void
FUNC7(struct ifc *ifcp, struct sockaddr_in6 *sin6, int nrt, struct netinfo6 *np)
{
	int i;
	int error;

	if (ifcp)
		FUNC6(1, "Send(%s): info(%d) to %s.%d\n",
			ifcp->ifc_name, nrt,
			FUNC2(&sin6->sin6_addr), FUNC3(sin6->sin6_port));
	else
		FUNC6(1, "Send: info(%d) to %s.%d\n",
			nrt, FUNC2(&sin6->sin6_addr), FUNC3(sin6->sin6_port));
	if (dflag >= 2) {
		np = ripbuf->rip6_nets;
		for (i = 0; i < nrt; i++, np++) {
			if (np->rip6_metric == NEXTHOP_METRIC) {
				if (FUNC0(&np->rip6_dest))
					FUNC5(2, "    NextHop reset");
				else {
					FUNC5(2, "    NextHop %s",
						FUNC2(&np->rip6_dest));
				}
			} else {
				FUNC5(2, "    %s/%d[%d]",
					FUNC2(&np->rip6_dest),
					np->rip6_plen, np->rip6_metric);
			}
			if (np->rip6_tag) {
				FUNC5(2, "  tag=0x%04x",
					FUNC3(np->rip6_tag) & 0xffff);
			}
			FUNC5(2, "\n");
		}
	}
	error = FUNC4(sin6, FUNC1(nrt));
	if (error == EAFNOSUPPORT) {
		/* Protocol not supported */
		if (ifcp != NULL) {
			FUNC6(1, "Could not send info to %s (%s): "
			    "set IFF_UP to 0\n",
			    ifcp->ifc_name,
			    FUNC2(&ifcp->ifc_ripsin.sin6_addr));
			/* As if down for AF_INET6 */
			ifcp->ifc_flags &= ~IFF_UP;
		} else {
			FUNC6(1, "Could not send info to %s\n",
			    FUNC2(&sin6->sin6_addr));
		}
	}
}