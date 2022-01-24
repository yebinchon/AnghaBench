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
struct wlan_mac_mac {int /*<<< orphan*/  mac_status; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  RowStatus_notReady ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_mac_mac*,int /*<<< orphan*/ ,int) ; 

struct wlan_mac_mac *
FUNC3(const uint8_t *mac)
{
	struct wlan_mac_mac *wmm;

	if ((wmm = (struct wlan_mac_mac *)FUNC0(sizeof(*wmm))) == NULL)
		return (NULL);

	FUNC2(wmm, 0, sizeof(*wmm));
	FUNC1(wmm->mac, mac, IEEE80211_ADDR_LEN);
	wmm->mac_status = RowStatus_notReady;

	return (wmm);
}