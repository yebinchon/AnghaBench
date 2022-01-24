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
struct ieee80211vap {int /*<<< orphan*/  iv_myaddr; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_bintval; int /*<<< orphan*/  ic_sta; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_intval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC3 (int /*<<< orphan*/ *,struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ieee80211vap*) ; 
 struct ieee80211_node* FUNC6 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 

void
FUNC8(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_node *ni, *obss;

	FUNC5(&ic->ic_sta, vap);
	/* XXX multi-bss: wrong */
	FUNC7(ic);

	ni = FUNC3(&ic->ic_sta, vap, vap->iv_myaddr);
	FUNC1(ni != NULL, ("unable to setup initial BSS node"));
	obss = vap->iv_bss;
	vap->iv_bss = FUNC6(ni);
	if (obss != NULL) {
		FUNC2(ni, obss);
		ni->ni_intval = ic->ic_bintval;
		FUNC4(obss);
	} else
		FUNC0(ni->ni_bssid, vap->iv_myaddr);
}