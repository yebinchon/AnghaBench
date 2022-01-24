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
typedef  int /*<<< orphan*/  uint ;
struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_NWID_LEN ; 
 int IFNAMSIZ ; 
 struct wlan_iface* FUNC0 (char*) ; 
 struct wlan_scan_result* FUNC1 (struct wlan_iface*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct asn_oid const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct wlan_scan_result *
FUNC3(const struct asn_oid *oid, uint sub, struct wlan_iface **wif)
{
	char wname[IFNAMSIZ];
	uint8_t ssid[IEEE80211_NWID_LEN + 1];
	uint8_t bssid[IEEE80211_ADDR_LEN];

	if (FUNC2(oid, sub, wname, ssid, bssid) < 0)
		return (NULL);

	if ((*wif = FUNC0(wname)) == NULL)
		return (NULL);

	return (FUNC1(*wif, ssid, bssid));
}