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
typedef  size_t uint32_t ;
struct wlan_scan_result {scalar_t__* ssid; scalar_t__* bssid; } ;

/* Variables and functions */
 size_t IEEE80211_ADDR_LEN ; 
 size_t FUNC0 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC1(struct wlan_scan_result *sr1,
    struct wlan_scan_result *sr2)
{
	uint32_t i;

	if (FUNC0(sr1->ssid) < FUNC0(sr2->ssid))
		return (-1);
	if (FUNC0(sr1->ssid) > FUNC0(sr2->ssid))
		return (1);

	for (i = 0; i < FUNC0(sr1->ssid) && i < FUNC0(sr2->ssid); i++) {
		if (sr1->ssid[i] < sr2->ssid[i])
			return (-1);
		if (sr1->ssid[i] > sr2->ssid[i])
			return (1);
	}

	for (i = 0; i < IEEE80211_ADDR_LEN; i++) {
		if (sr1->bssid[i] < sr2->bssid[i])
			return (-1);
		if (sr1->bssid[i] > sr2->bssid[i])
			return (1);
	}

	return (0);
}