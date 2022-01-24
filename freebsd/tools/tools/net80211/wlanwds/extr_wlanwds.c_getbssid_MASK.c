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
struct ieee80211req {int /*<<< orphan*/  i_len; int /*<<< orphan*/ * i_data; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_name; } ;
typedef  int /*<<< orphan*/  ireq ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_IOC_BSSID ; 
 int /*<<< orphan*/  SIOCG80211 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ieee80211req*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(int s, const char *ifname, uint8_t bssid[IEEE80211_ADDR_LEN])
{
	struct ieee80211req ireq;

	FUNC2(&ireq, 0, sizeof(ireq));
	FUNC3(ireq.i_name, ifname, sizeof(ireq.i_name));
	ireq.i_type = IEEE80211_IOC_BSSID;
	ireq.i_data = bssid;
	ireq.i_len = IEEE80211_ADDR_LEN;
	if (FUNC1(s, SIOCG80211, &ireq) < 0)
		FUNC0(-1, "%s: cannot fetch bssid", ifname);
}