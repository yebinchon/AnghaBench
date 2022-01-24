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
struct ipq {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IPREASS_NHASH ; 
 int IP_MAXFRAGPACKETS ; 
 int /*<<< orphan*/  IP_MAXFRAGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 TYPE_1__* V_ipq ; 
 int /*<<< orphan*/  V_ipq_hashseed ; 
 int /*<<< orphan*/  V_ipq_zone ; 
 int /*<<< orphan*/  V_ipreass_maxbucketsize ; 
 int V_maxfragsperpacket ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  ipreass_zone_change ; 
 int /*<<< orphan*/  maxfrags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nmbclusters_change ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(void)
{
	int max;

	for (int i = 0; i < IPREASS_NHASH; i++) {
		FUNC2(&V_ipq[i].head);
		FUNC5(&V_ipq[i].lock, "IP reassembly", NULL,
		    MTX_DEF | MTX_DUPOK);
		V_ipq[i].count = 0;
	}
	V_ipq_hashseed = FUNC3();
	V_maxfragsperpacket = 16;
	V_ipq_zone = FUNC6("ipq", sizeof(struct ipq), NULL, NULL, NULL,
	    NULL, UMA_ALIGN_PTR, 0);
	max = IP_MAXFRAGPACKETS;
	max = FUNC7(V_ipq_zone, max);
	V_ipreass_maxbucketsize = FUNC4(max / (IPREASS_NHASH / 2), 1);

	if (FUNC1(curvnet)) {
		maxfrags = IP_MAXFRAGS;
		FUNC0(nmbclusters_change, ipreass_zone_change,
		    NULL, EVENTHANDLER_PRI_ANY);
	}
}