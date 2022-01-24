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
struct wlan_scan_result {int /*<<< orphan*/  capinfo; int /*<<< orphan*/  bintval; int /*<<< orphan*/  noise; int /*<<< orphan*/  frequency; int /*<<< orphan*/  rssi; int /*<<< orphan*/  opchannel; } ;
struct wlan_iface {int dummy; } ;
struct ieee80211req_scan_result {int /*<<< orphan*/  isr_capinfo; int /*<<< orphan*/  isr_intval; int /*<<< orphan*/  isr_noise; int /*<<< orphan*/  isr_freq; int /*<<< orphan*/  isr_rssi; int /*<<< orphan*/  isr_flags; int /*<<< orphan*/  isr_bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct wlan_iface*,struct wlan_scan_result*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_scan_result*) ; 
 struct wlan_scan_result* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct wlan_iface *wif,
    const struct ieee80211req_scan_result *isr, uint8_t *ssid)
{
	struct wlan_scan_result *sr;

	if ((sr = FUNC4(ssid, isr->isr_bssid)) == NULL)
		return (-1);

	sr->opchannel = FUNC0(isr->isr_flags);
	sr->rssi = isr->isr_rssi;
	sr->frequency = isr->isr_freq;
	sr->noise = isr->isr_noise;
	sr->bintval = isr->isr_intval;
	sr->capinfo = FUNC1(isr->isr_capinfo);

	if (FUNC2(wif, sr) < 0) {
		FUNC3(sr);
		return (-1);
	}

	return (0);
}