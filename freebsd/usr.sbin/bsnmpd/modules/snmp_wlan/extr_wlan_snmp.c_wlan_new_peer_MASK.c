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
struct wlan_peer {int /*<<< orphan*/  pmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_peer*,int /*<<< orphan*/ ,int) ; 

struct wlan_peer *
FUNC3(const uint8_t *pmac)
{
	struct wlan_peer *wip;

	if ((wip = (struct wlan_peer *)FUNC0(sizeof(*wip))) == NULL)
		return (NULL);

	FUNC2(wip, 0, sizeof(struct wlan_peer));
	FUNC1(wip->pmac, pmac, IEEE80211_ADDR_LEN);

	return (wip);
}