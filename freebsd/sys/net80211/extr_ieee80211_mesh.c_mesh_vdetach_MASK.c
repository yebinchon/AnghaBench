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
struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; TYPE_1__* iv_ic; } ;
struct ieee80211_mesh_state {TYPE_2__* ms_ppath; int /*<<< orphan*/  ms_cleantimer; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* mpp_vdetach ) (struct ieee80211vap*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  ic_sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_mesh_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_mesh_state*) ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  mesh_vdetach_peers ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211vap *vap)
{
	struct ieee80211_mesh_state *ms = vap->iv_mesh;

	FUNC2(&ms->ms_cleantimer);
	FUNC3(&vap->iv_ic->ic_sta, mesh_vdetach_peers,
	    NULL);
	FUNC4(vap);
	FUNC1(ms);
	ms->ms_ppath->mpp_vdetach(vap);
	FUNC0(vap->iv_mesh, M_80211_VAP);
	vap->iv_mesh = NULL;
}