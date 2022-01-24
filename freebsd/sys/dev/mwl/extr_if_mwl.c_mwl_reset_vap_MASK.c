#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mwl_hal_vap {int dummy; } ;
struct ieee80211vap {int iv_flags_ht; scalar_t__ iv_opmode; TYPE_1__* iv_bss; int /*<<< orphan*/  iv_rtsthreshold; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_htprotmode; int /*<<< orphan*/  ic_curhtprotmode; } ;
struct TYPE_4__ {struct mwl_hal_vap* mv_hvap; } ;
struct TYPE_3__ {int /*<<< orphan*/  ni_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTPROTECT_AUTO ; 
 int /*<<< orphan*/  HTPROTECT_NONE ; 
 int IEEE80211_FHT_SHORTGI20 ; 
 int IEEE80211_FHT_SHORTGI40 ; 
 int /*<<< orphan*/  IEEE80211_HTINFO_OPMODE ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 scalar_t__ IEEE80211_PROT_NONE ; 
 int IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct ieee80211vap*) ; 
 int FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal_vap*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_hal_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mwl_hal_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl_hal_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211vap*) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211vap *vap, int state)
{
	struct mwl_hal_vap *hvap = FUNC1(vap)->mv_hvap;
	struct ieee80211com *ic = vap->iv_ic;

	if (state == IEEE80211_S_RUN)
		FUNC8(vap);
	/* XXX off by 1? */
	FUNC6(hvap, vap->iv_rtsthreshold);
	/* XXX auto? 20/40 split? */
	FUNC3(hvap, (vap->iv_flags_ht &
	    (IEEE80211_FHT_SHORTGI20|IEEE80211_FHT_SHORTGI40)) ? 1 : 0);
	FUNC4(hvap, ic->ic_htprotmode == IEEE80211_PROT_NONE ?
	    HTPROTECT_NONE : HTPROTECT_AUTO);
	/* XXX txpower cap */

	/* re-setup beacons */
	if (state == IEEE80211_S_RUN &&
	    (vap->iv_opmode == IEEE80211_M_HOSTAP ||
	     vap->iv_opmode == IEEE80211_M_MBSS ||
	     vap->iv_opmode == IEEE80211_M_IBSS)) {
		FUNC7(vap, vap->iv_bss->ni_chan);
		FUNC5(hvap,
		    FUNC0(ic->ic_curhtprotmode, IEEE80211_HTINFO_OPMODE));
		return FUNC2(vap);
	}
	return 0;
}