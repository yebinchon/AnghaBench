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
typedef  int /*<<< orphan*/  vap ;
struct ifnet {int /*<<< orphan*/  iv_debug; struct ifnet* iv_ifp; struct ifnet* iv_ic; int /*<<< orphan*/  if_xname; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_debug; struct ieee80211vap* iv_ifp; struct ieee80211vap* iv_ic; int /*<<< orphan*/  if_xname; } ;
struct ieee80211com {int /*<<< orphan*/  iv_debug; struct ieee80211com* iv_ifp; struct ieee80211com* iv_ic; int /*<<< orphan*/  if_xname; } ;
typedef  int /*<<< orphan*/  ifp ;
typedef  int /*<<< orphan*/  ic ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_CRYPTO ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 scalar_t__ FUNC7 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int tests ; 
 int /*<<< orphan*/ * tkiptests ; 

__attribute__((used)) static int
FUNC9(void)
{
	struct ieee80211com ic;
	struct ieee80211vap vap;
	struct ifnet ifp;
	int i, pass, total;

	FUNC4(&ic, 0, sizeof(ic));
	FUNC4(&vap, 0, sizeof(vap));
	FUNC4(&ifp, 0, sizeof(ifp));

	FUNC0(&ic);

	/* some minimal initialization */
	FUNC8(ifp.if_xname, "test_ccmp", sizeof(ifp.if_xname));
	vap.iv_ic = &ic;
	vap.iv_ifp = &ifp;
	if (debug)
		vap.iv_debug = IEEE80211_MSG_CRYPTO;
	FUNC2(&vap);

	pass = 0;
	total = 0;
	for (i = 0; i < FUNC5(tkiptests); i++)
		if (tests & (1<<i)) {
			total++;
			pass += FUNC7(&vap, &tkiptests[i]);
		}
	FUNC6("%u of %u 802.11i TKIP test vectors passed\n", pass, total);

	FUNC3(&vap);
	FUNC1(&ic);

	return (pass == total ? 0 : -1);
}