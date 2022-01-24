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
typedef  int uint32_t ;
struct ieee80211_node {int ni_mltval; int /*<<< orphan*/  ni_mltimer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ieee80211_node*) ; 
 int /*<<< orphan*/  mesh_peer_timeout_cb ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_node *ni)
{
	uint32_t r;
	
	r = FUNC0();
	ni->ni_mltval += r % ni->ni_mltval;
	FUNC1(&ni->ni_mltimer, ni->ni_mltval, mesh_peer_timeout_cb,
	    ni);
}