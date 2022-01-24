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
typedef  int /*<<< orphan*/  u_int ;
struct ieee80211vap {scalar_t__ iv_scanvalid; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; scalar_t__ ic_lastscan; struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scanner {int dummy; } ;
struct ieee80211_scan_state {int ss_flags; TYPE_1__* ss_ops; } ;
struct ieee80211_scan_ssid {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ss_iflags; } ;
struct TYPE_3__ {int (* scan_end ) (struct ieee80211_scan_state*,struct ieee80211vap*) ;} ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int IEEE80211_SCAN_FLUSH ; 
 int IEEE80211_SCAN_NOSSID ; 
 int /*<<< orphan*/  ISCAN_DISCARD ; 
 TYPE_2__* FUNC1 (struct ieee80211_scan_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,struct ieee80211_scan_state*,int /*<<< orphan*/ ,struct ieee80211_scan_ssid const*) ; 
 int FUNC4 (struct ieee80211_scanner const*,struct ieee80211vap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_scan_ssid const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct ieee80211_scan_state*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  ticks ; 

__attribute__((used)) static int
FUNC7(const struct ieee80211_scanner *scan,
    struct ieee80211vap *vap, int flags,
    u_int duration, u_int mindwell, u_int maxdwell,
    u_int nssid, const struct ieee80211_scan_ssid ssids[])
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_scan_state *ss = ic->ic_scan;
	int result;

	FUNC0(ic);

	if (ss->ss_ops != NULL) {
		/* XXX verify ss_ops matches vap->iv_opmode */
		if ((flags & IEEE80211_SCAN_NOSSID) == 0) {
			/*
			 * Update the ssid list and mark flags so if
			 * we call start_scan it doesn't duplicate work.
			 */
			FUNC3(vap, ss, nssid, ssids);
			flags |= IEEE80211_SCAN_NOSSID;
		}
		if ((ic->ic_flags & IEEE80211_F_SCAN) == 0 &&
		    (flags & IEEE80211_SCAN_FLUSH) == 0 &&
		    FUNC5(ticks, ic->ic_lastscan + vap->iv_scanvalid)) {
			/*
			 * We're not currently scanning and the cache is
			 * deemed hot enough to consult.  Lock out others
			 * by marking IEEE80211_F_SCAN while we decide if
			 * something is already in the scan cache we can
			 * use.  Also discard any frames that might come
			 * in while temporarily marked as scanning.
			 */
			FUNC1(ss)->ss_iflags |= ISCAN_DISCARD;
			ic->ic_flags |= IEEE80211_F_SCAN;

			/* NB: need to use supplied flags in check */
			ss->ss_flags = flags & 0xff;
			result = ss->ss_ops->scan_end(ss, vap);

			ic->ic_flags &= ~IEEE80211_F_SCAN;
			FUNC1(ss)->ss_iflags &= ~ISCAN_DISCARD;
			if (result) {
				FUNC2(vap);
				return 1;
			}
		}
	}
	result = FUNC4(scan, vap, flags, duration,
	    mindwell, maxdwell, nssid, ssids);

	return result;
}