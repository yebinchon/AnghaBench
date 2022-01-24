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
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t IP6REASS_NHASH ; 
 int /*<<< orphan*/  IP6_MAXFRAGPACKETS ; 
 int /*<<< orphan*/  IP6_MAXFRAGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int V_frag6_on ; 
 int /*<<< orphan*/  V_ip6_maxfragpackets ; 
 int V_ip6_maxfragsperpacket ; 
 TYPE_1__* V_ip6qb ; 
 int /*<<< orphan*/  V_ip6qb_hashseed ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  frag6_change ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ip6_maxfrags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nmbclusters_change ; 

void
FUNC7(void)
{
	uint32_t bucket;

	V_ip6_maxfragpackets = IP6_MAXFRAGPACKETS;
	FUNC5();
	for (bucket = 0; bucket < IP6REASS_NHASH; bucket++) {
		FUNC3(FUNC1(bucket));
		FUNC6(&V_ip6qb[bucket].lock, "ip6qb", NULL, MTX_DEF);
		V_ip6qb[bucket].count = 0;
	}
	V_ip6qb_hashseed = FUNC4();
	V_ip6_maxfragsperpacket = 64;
#ifdef VIMAGE
	V_frag6_on = true;
#endif
	if (!FUNC2(curvnet))
		return;

	ip6_maxfrags = IP6_MAXFRAGS;
	FUNC0(nmbclusters_change,
	    frag6_change, NULL, EVENTHANDLER_PRI_ANY);
}