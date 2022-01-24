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
struct ieee80211_mesh_state {int /*<<< orphan*/  ms_routes; } ;
struct ieee80211_mesh_route {int /*<<< orphan*/  rt_discovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_mesh_route*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_mesh_route*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_mesh_route*) ; 
 int /*<<< orphan*/  M_80211_MESH_RT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ieee80211_mesh_route*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_next ; 

__attribute__((used)) static __inline void
FUNC5(struct ieee80211_mesh_state *ms, struct ieee80211_mesh_route *rt)
{
	FUNC3(&ms->ms_routes, rt, rt_next);
	/*
	 * Grab the lock before destroying it, to be sure no one else
	 * is holding the route.
	 */
	FUNC1(rt);
	FUNC4(&rt->rt_discovery);
	FUNC2(rt);
	FUNC0(rt, M_80211_MESH_RT);
}