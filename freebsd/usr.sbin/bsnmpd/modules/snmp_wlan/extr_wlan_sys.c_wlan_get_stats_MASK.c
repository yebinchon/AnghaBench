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
struct wlan_iface {int /*<<< orphan*/  wname; int /*<<< orphan*/  stats; } ;
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCG80211STATS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct wlan_iface *wif)
{
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(struct ifreq));
	FUNC3(ifr.ifr_name, wif->wname, IFNAMSIZ);

	ifr.ifr_data = (caddr_t) &wif->stats;

	if (FUNC0(sock, SIOCG80211STATS, &ifr) < 0) {
		FUNC4(LOG_ERR, "iface %s - ioctl(SIOCG80211STATS) failed: %s",
		    wif->wname, FUNC2(errno));
		return (-1);
	}

	return (0);
}