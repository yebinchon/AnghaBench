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
struct sockaddr_in6 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rip6_metric; } ;
struct riprt {TYPE_1__ rrt_info; } ;
struct netinfo6 {scalar_t__ rip6_plen; int /*<<< orphan*/  rip6_metric; int /*<<< orphan*/  rip6_dest; } ;
struct ifc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOPCNT_INFINITY6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RRTF_SENDANYWAY ; 
 int /*<<< orphan*/  FUNC2 (struct ifc*,struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 struct riprt* FUNC3 (struct netinfo6*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void
FUNC6(struct ifc *ifcp,
	struct netinfo6 *np,
	int nn,
	struct sockaddr_in6 *sin6)
{
	int i;
	struct riprt *rrt;

	if (!(nn == 1 && FUNC0(&np->rip6_dest) &&
	      np->rip6_plen == 0 && np->rip6_metric == HOPCNT_INFINITY6)) {
		/* Specific response, don't split-horizon */
		FUNC5(1, "\tRIP Request\n");
		for (i = 0; i < nn; i++, np++) {
			rrt = FUNC3(np);
			if (rrt)
				np->rip6_metric = rrt->rrt_info.rip6_metric;
			else
				np->rip6_metric = HOPCNT_INFINITY6;
		}
		(void)FUNC4(sin6, FUNC1(nn));
		return;
	}
	/* Whole routing table dump */
	FUNC5(1, "\tRIP Request -- whole routing table\n");
	FUNC2(ifcp, sin6, RRTF_SENDANYWAY);
}