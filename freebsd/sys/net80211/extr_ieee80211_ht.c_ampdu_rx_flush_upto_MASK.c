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
typedef  int /*<<< orphan*/  ieee80211_seq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_rx_ampdu*,struct ieee80211_node*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_node *ni,
	struct ieee80211_rx_ampdu *rap, ieee80211_seq winstart)
{
	struct ieee80211vap *vap = ni->ni_vap;
	ieee80211_seq seqno;
	int i, r;

	/*
	 * Flush any complete MSDU's with a sequence number lower
	 * than winstart.  Gaps may exist.  Note that we may actually
	 * dispatch frames past winstart if a run continues; this is
	 * an optimization that avoids having to do a separate pass
	 * to dispatch frames after moving the BA window start.
	 */
	seqno = rap->rxa_start;
	for (i = 0; i < rap->rxa_wnd; i++) {
		r = FUNC2(rap, ni, i);
		if (r == 0) {
			if (!FUNC0(seqno, winstart))
				break;
		}
		vap->iv_stats.is_ampdu_rx_oor += r;
		seqno = FUNC1(seqno);
	}
	/*
	 * If frames remain, copy the mbuf pointers down so
	 * they correspond to the offsets in the new window.
	 */
	FUNC3(rap, ni, i, winstart);

	/*
	 * Move the start of the BA window; we use the
	 * sequence number of the last MSDU that was
	 * passed up the stack+1 or winstart if stopped on
	 * a gap in the reorder buffer.
	 */
	rap->rxa_start = seqno;
}