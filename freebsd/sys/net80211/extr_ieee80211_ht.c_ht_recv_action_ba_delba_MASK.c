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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct ieee80211com {int /*<<< orphan*/  (* ic_ampdu_rx_stop ) (struct ieee80211_node*,struct ieee80211_rx_ampdu*) ;int /*<<< orphan*/  (* ic_addba_stop ) (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ;} ;
struct ieee80211_tx_ampdu {int dummy; } ;
struct ieee80211_rx_ampdu {int dummy; } ;
struct ieee80211_node {struct ieee80211_rx_ampdu* ni_rx_ampdu; struct ieee80211_tx_ampdu* ni_tx_ampdu; int /*<<< orphan*/  ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 int IEEE80211_DELBAPS_INIT ; 
 int IEEE80211_DELBAPS_TID ; 
 int IEEE80211_MSG_11N ; 
 int IEEE80211_MSG_ACTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ieee80211_node*,char*,int,int,int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,struct ieee80211_tx_ampdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*,struct ieee80211_rx_ampdu*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_node *ni,
	const struct ieee80211_frame *wh,
	const uint8_t *frm, const uint8_t *efrm)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ieee80211_rx_ampdu *rap;
	struct ieee80211_tx_ampdu *tap;
	uint16_t baparamset, code;
	int tid;

	baparamset = FUNC2(frm+2);
	code = FUNC2(frm+4);

	tid = FUNC1(baparamset, IEEE80211_DELBAPS_TID);

	FUNC0(ni->ni_vap, IEEE80211_MSG_ACTION | IEEE80211_MSG_11N, ni,
	    "recv DELBA: baparamset 0x%x (tid %d initiator %d) "
	    "code %d", baparamset, tid,
	    FUNC1(baparamset, IEEE80211_DELBAPS_INIT), code);

	if ((baparamset & IEEE80211_DELBAPS_INIT) == 0) {
		tap = &ni->ni_tx_ampdu[tid];
		ic->ic_addba_stop(ni, tap);
	} else {
		rap = &ni->ni_rx_ampdu[tid];
		ic->ic_ampdu_rx_stop(ni, rap);
	}
	return 0;
}