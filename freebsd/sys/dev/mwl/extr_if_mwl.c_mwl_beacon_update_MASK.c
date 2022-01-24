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
struct mwl_hal_vap {int dummy; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curhtprotmode; } ;
struct TYPE_2__ {struct mwl_hal_vap* mv_hvap; } ;

/* Variables and functions */
#define  IEEE80211_BEACON_APPIE 134 
#define  IEEE80211_BEACON_CAPS 133 
#define  IEEE80211_BEACON_CSA 132 
#define  IEEE80211_BEACON_ERP 131 
#define  IEEE80211_BEACON_HTINFO 130 
#define  IEEE80211_BEACON_TIM 129 
#define  IEEE80211_BEACON_WME 128 
 int /*<<< orphan*/  IEEE80211_HTINFO_OPMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_hal_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211vap *vap, int item)
{
	struct mwl_hal_vap *hvap = FUNC2(vap)->mv_hvap;
	struct ieee80211com *ic = vap->iv_ic;

	FUNC0(hvap != NULL, ("no beacon"));
	switch (item) {
	case IEEE80211_BEACON_ERP:
		FUNC5(ic);
		break;
	case IEEE80211_BEACON_HTINFO:
		FUNC4(hvap,
		    FUNC1(ic->ic_curhtprotmode, IEEE80211_HTINFO_OPMODE));
		break;
	case IEEE80211_BEACON_CAPS:
	case IEEE80211_BEACON_WME:
	case IEEE80211_BEACON_APPIE:
	case IEEE80211_BEACON_CSA:
		break;
	case IEEE80211_BEACON_TIM:
		/* NB: firmware always forms TIM */
		return;
	}
	/* XXX retain beacon frame and update */
	FUNC3(vap);
}