#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tv_usec; } ;
struct TYPE_4__ {void* mpp_inact; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ACTION_CAT_MESH ; 
 int /*<<< orphan*/  IEEE80211_ACTION_MESH_HWMP ; 
 int /*<<< orphan*/  hwmp_recv_action_meshpath ; 
 int ieee80211_hwmp_maxpreq_retries ; 
 void* ieee80211_hwmp_net_diameter_traversaltime ; 
 void* ieee80211_hwmp_pathtimeout ; 
 void* ieee80211_hwmp_rannint ; 
 TYPE_3__ ieee80211_hwmp_rootconfint ; 
 int ieee80211_hwmp_rootconfint_internal ; 
 void* ieee80211_hwmp_rootint ; 
 void* ieee80211_hwmp_roottimeout ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ mesh_proto_hwmp ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	/* Default values as per amendment */
	ieee80211_hwmp_pathtimeout = FUNC2(5*1000);
	ieee80211_hwmp_roottimeout = FUNC2(5*1000);
	ieee80211_hwmp_rootint = FUNC2(2*1000);
	ieee80211_hwmp_rannint = FUNC2(1*1000);
	ieee80211_hwmp_rootconfint_internal = FUNC2(2*1000);
	ieee80211_hwmp_maxpreq_retries = 3;
	/*
	 * (TU): A measurement of time equal to 1024 μs,
	 * 500 TU is 512 ms.
	 */
	ieee80211_hwmp_net_diameter_traversaltime = FUNC2(512);

	/*
	 * NB: I dont know how to make SYSCTL_PROC that calls ms to ticks
	 * and return a struct timeval...
	 */
	ieee80211_hwmp_rootconfint.tv_usec =
	    ieee80211_hwmp_rootconfint_internal * 1000;

	/*
	 * Register action frame handler.
	 */
	FUNC1(IEEE80211_ACTION_CAT_MESH,
	    IEEE80211_ACTION_MESH_HWMP, hwmp_recv_action_meshpath);

	/* NB: default is 5 secs per spec */
	mesh_proto_hwmp.mpp_inact = FUNC2(5*1000);

	/*
	 * Register HWMP.
	 */
	FUNC0(&mesh_proto_hwmp);
}