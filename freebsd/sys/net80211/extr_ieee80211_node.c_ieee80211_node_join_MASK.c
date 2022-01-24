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
typedef  int uint16_t ;
struct ieee80211vap {int iv_max_aid; TYPE_1__* iv_auth; int /*<<< orphan*/  iv_sta_assoc; int /*<<< orphan*/ * iv_aid_bitmap; } ;
struct ieee80211com {int ic_flags; int /*<<< orphan*/  (* ic_newassoc ) (struct ieee80211_node*,int) ;int /*<<< orphan*/  ic_bsschan; int /*<<< orphan*/  ic_sta_assoc; } ;
struct ieee80211_node {scalar_t__ ni_associd; int ni_flags; int ni_chw; int /*<<< orphan*/  ni_jointime; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ia_node_join ) (struct ieee80211_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*,int) ; 
 scalar_t__ FUNC2 (struct ieee80211vap*,struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int IEEE80211_FC0_SUBTYPE_ASSOC_RESP ; 
 int IEEE80211_F_SHPREAMBLE ; 
 int IEEE80211_F_SHSLOT ; 
 int IEEE80211_F_USEPROT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int IEEE80211_MSG_ASSOC ; 
 int IEEE80211_MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_node*) ; 
 int IEEE80211_NODE_AMPDU ; 
 int /*<<< orphan*/  IEEE80211_NODE_FF ; 
 int IEEE80211_NODE_HT ; 
 int IEEE80211_NODE_MIMO_PS ; 
 int IEEE80211_NODE_MIMO_RTS ; 
 int IEEE80211_NODE_QOS ; 
 int IEEE80211_NODE_RIFS ; 
 int /*<<< orphan*/  IEEE80211_NODE_TURBOP ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211vap*,int,struct ieee80211_node*,char*,int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_STATUS_SUCCESS ; 
 int /*<<< orphan*/  IEEE80211_STATUS_TOOMANY ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_node*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee80211_node*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  time_uptime ; 

void
FUNC22(struct ieee80211_node *ni, int resp)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ieee80211vap *vap = ni->ni_vap;
	int newassoc;

	if (ni->ni_associd == 0) {
		uint16_t aid;

		FUNC12(vap->iv_aid_bitmap != NULL, ("no aid bitmap"));
		/*
		 * It would be good to search the bitmap
		 * more efficiently, but this will do for now.
		 */
		for (aid = 1; aid < vap->iv_max_aid; aid++) {
			if (!FUNC0(vap, aid))
				break;
		}
		if (aid >= vap->iv_max_aid) {
			FUNC10(ni, resp, IEEE80211_STATUS_TOOMANY);
			FUNC15(ni);
			return;
		}
		ni->ni_associd = aid | 0xc000;
		ni->ni_jointime = time_uptime;
		FUNC7(ic);
		FUNC1(vap, ni->ni_associd);
		vap->iv_sta_assoc++;
		ic->ic_sta_assoc++;

		if (FUNC5(ic->ic_bsschan))
			FUNC13(ni);
		if (FUNC6(ic->ic_bsschan))
			FUNC19(ni);
		if (FUNC3(ic->ic_bsschan) &&
		    FUNC4(ic->ic_bsschan))
			FUNC14(ni);
		FUNC11(ic);

		newassoc = 1;
	} else
		newassoc = 0;

	/*
	 * XXX VHT - should log VHT channel width, etc
	 */
	FUNC9(vap, IEEE80211_MSG_ASSOC | IEEE80211_MSG_DEBUG, ni,
	    "station associated at aid %d: %s preamble, %s slot time%s%s%s%s%s%s%s%s",
	    FUNC8(ni),
	    ic->ic_flags & IEEE80211_F_SHPREAMBLE ? "short" : "long",
	    ic->ic_flags & IEEE80211_F_SHSLOT ? "short" : "long",
	    ic->ic_flags & IEEE80211_F_USEPROT ? ", protection" : "",
	    ni->ni_flags & IEEE80211_NODE_QOS ? ", QoS" : "",
	    /* XXX update for VHT string */
	    ni->ni_flags & IEEE80211_NODE_HT ?
		(ni->ni_chw == 40 ? ", HT40" : ", HT20") : "",
	    ni->ni_flags & IEEE80211_NODE_AMPDU ? " (+AMPDU)" : "",
	    ni->ni_flags & IEEE80211_NODE_MIMO_RTS ? " (+SMPS-DYN)" :
	        ni->ni_flags & IEEE80211_NODE_MIMO_PS ? " (+SMPS)" : "",
	    ni->ni_flags & IEEE80211_NODE_RIFS ? " (+RIFS)" : "",
	    FUNC2(vap, ni, IEEE80211_NODE_FF) ?
		", fast-frames" : "",
	    FUNC2(vap, ni, IEEE80211_NODE_TURBOP) ?
		", turbo" : ""
	);

	FUNC16(ni);
	FUNC18(ni);
	/* give driver a chance to setup state like ni_txrate */
	if (ic->ic_newassoc != NULL)
		ic->ic_newassoc(ni, newassoc);
	FUNC10(ni, resp, IEEE80211_STATUS_SUCCESS);
	/* tell the authenticator about new station */
	if (vap->iv_auth->ia_node_join != NULL)
		vap->iv_auth->ia_node_join(ni);
	FUNC17(ni,
	    resp == IEEE80211_FC0_SUBTYPE_ASSOC_RESP);
}