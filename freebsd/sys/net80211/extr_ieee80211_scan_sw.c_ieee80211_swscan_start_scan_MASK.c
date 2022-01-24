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
typedef  int /*<<< orphan*/  u_int ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_scanner {int dummy; } ;
struct ieee80211_scan_ssid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int FUNC3 (struct ieee80211_scanner const*,struct ieee80211vap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_scan_ssid const*) ; 

__attribute__((used)) static int
FUNC4(const struct ieee80211_scanner *scan,
    struct ieee80211vap *vap, int flags,
    u_int duration, u_int mindwell, u_int maxdwell,
    u_int nssid, const struct ieee80211_scan_ssid ssids[])
{
	struct ieee80211com *ic = vap->iv_ic;
	int result;

	FUNC2(ic);

	FUNC0(ic);
	result = FUNC3(scan, vap, flags, duration,
	    mindwell, maxdwell, nssid, ssids);
	FUNC1(ic);

	return result;
}