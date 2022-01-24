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
typedef  scalar_t__ uint ;
struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  scanlist; } ;
struct asn_oid {scalar_t__ len; } ;

/* Variables and functions */
 int IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  IEEE80211_NWID_LEN ; 
 int IFNAMSIZ ; 
 struct wlan_scan_result* FUNC0 (int /*<<< orphan*/ *) ; 
 struct wlan_scan_result* FUNC1 (struct wlan_scan_result*,int /*<<< orphan*/ ) ; 
 struct wlan_iface* FUNC2 (char*) ; 
 struct wlan_iface* FUNC3 () ; 
 struct wlan_iface* FUNC4 (struct wlan_iface*) ; 
 struct wlan_scan_result* FUNC5 (struct wlan_iface*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct asn_oid const*,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wsr ; 

__attribute__((used)) static struct wlan_scan_result *
FUNC7(const struct asn_oid *oid, uint sub,
    struct wlan_iface **wif)
{
	char wname[IFNAMSIZ];
	uint8_t ssid[IEEE80211_NWID_LEN + 1];
	uint8_t bssid[IEEE80211_ADDR_LEN];
	struct wlan_scan_result *sr;

	if (oid->len - sub == 0) {
		for (*wif = FUNC3(); *wif != NULL;
		    *wif = FUNC4(*wif)) {
			sr = FUNC0(&(*wif)->scanlist);
			if (sr != NULL)
				return (sr);
		}
		return (NULL);
	}

	if (FUNC6(oid, sub, wname, ssid, bssid) < 0 ||
	    (*wif = FUNC2(wname)) == NULL ||
	    (sr = FUNC5(*wif, ssid, bssid)) == NULL)
		return (NULL);

	if ((sr = FUNC1(sr, wsr)) != NULL)
		return (sr);

	while ((*wif = FUNC4(*wif)) != NULL)
		if ((sr = FUNC0(&(*wif)->scanlist)) != NULL)
			break;

	return (sr);
}