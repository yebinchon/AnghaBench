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
typedef  int /*<<< orphan*/  u_int ;
struct ifnet {int /*<<< orphan*/  if_vnet; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_rx_tkipmic; } ;
struct ieee80211vap {TYPE_1__ iv_stats; struct ifnet* iv_ifp; } ;
struct ieee80211_michael_event {int /*<<< orphan*/  iev_keyix; int /*<<< orphan*/  iev_cipher; int /*<<< orphan*/  iev_src; int /*<<< orphan*/  iev_dst; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr2; int /*<<< orphan*/  i_addr1; } ;
typedef  int /*<<< orphan*/  iev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_CIPHER_TKIP ; 
 int /*<<< orphan*/  IEEE80211_MSG_CRYPTO ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTM_IEEE80211_MICHAEL ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct ieee80211_michael_event*,int) ; 

void
FUNC5(struct ieee80211vap *vap,
	const struct ieee80211_frame *wh, u_int keyix)
{
	struct ifnet *ifp = vap->iv_ifp;

	FUNC3(vap, IEEE80211_MSG_CRYPTO, wh->i_addr2,
	    "michael MIC verification failed <keyix %u>", keyix);
	vap->iv_stats.is_rx_tkipmic++;

	if (ifp != NULL) {		/* NB: for cipher test modules */
		struct ieee80211_michael_event iev;

		FUNC2(iev.iev_dst, wh->i_addr1);
		FUNC2(iev.iev_src, wh->i_addr2);
		iev.iev_cipher = IEEE80211_CIPHER_TKIP;
		iev.iev_keyix = keyix;
		FUNC1(ifp->if_vnet);
		FUNC4(ifp, RTM_IEEE80211_MICHAEL, &iev, sizeof(iev));
		FUNC0();
	}
}