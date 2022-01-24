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
typedef  char uint8_t ;
struct wlan_scan_result {int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 scalar_t__ IEEE80211_NWID_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_scan_result*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

struct wlan_scan_result *
FUNC4(const uint8_t *ssid, const uint8_t *bssid)
{
	struct wlan_scan_result *sr;

	sr = (struct wlan_scan_result *)FUNC0(sizeof(*sr));
	if (sr == NULL)
		return (NULL);

	FUNC2(sr, 0, sizeof(*sr));
	if (ssid[0] != '\0')
		FUNC3(sr->ssid, ssid, IEEE80211_NWID_LEN + 1);
	FUNC1(sr->bssid, bssid, IEEE80211_ADDR_LEN);

	return (sr);
}