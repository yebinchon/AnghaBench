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
struct TYPE_2__ {int is_ampdu_rx_oor; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_rx_ampdu {int rxa_wnd; int /*<<< orphan*/  rxa_start; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_rx_ampdu *rap, struct ieee80211_node *ni)
{
	struct ieee80211vap *vap = ni->ni_vap;
	int i;

	/* flush run of frames */
	for (i = 1; i < rap->rxa_wnd; i++) {
		if (FUNC1(rap, ni, i) == 0)
			break;
	}

	/*
	 * If frames remain, copy the mbuf pointers down so
	 * they correspond to the offsets in the new window.
	 */
	FUNC2(rap, ni, i, -1);

	/*
	 * Adjust the start of the BA window to
	 * reflect the frames just dispatched.
	 */
	rap->rxa_start = FUNC0(rap->rxa_start, i);
	vap->iv_stats.is_ampdu_rx_oor += i;
}