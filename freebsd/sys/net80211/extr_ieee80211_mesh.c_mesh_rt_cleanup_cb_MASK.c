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
struct ieee80211vap {struct ieee80211_mesh_state* iv_mesh; } ;
struct ieee80211_mesh_state {TYPE_1__* ms_ppath; int /*<<< orphan*/  ms_cleantimer; } ;
struct TYPE_2__ {int /*<<< orphan*/  mpp_inact; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct ieee80211vap *vap = arg;
	struct ieee80211_mesh_state *ms = vap->iv_mesh;

	FUNC1(vap);
	FUNC0(&ms->ms_cleantimer, ms->ms_ppath->mpp_inact,
	    mesh_rt_cleanup_cb, vap);
}