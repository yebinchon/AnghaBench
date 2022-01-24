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
struct wlan_iface {int /*<<< orphan*/  wname; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCIFDESTROY ; 
 int SNMP_ERR_GENERR ; 
 int SNMP_ERR_INCONS_VALUE ; 
 int SNMP_ERR_NOERROR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct wlan_iface *wif)
{
	struct ifreq ifr;

	if (wif == NULL)
		return (SNMP_ERR_INCONS_VALUE);

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC2(ifr.ifr_name, wif->wname);

	if (FUNC0(sock, SIOCIFDESTROY, &ifr) < 0) {
		FUNC4(LOG_ERR, "wlan clone destroy: ioctl(SIOCIFDESTROY) "
		    "failed: %s", FUNC3(errno));
		return (SNMP_ERR_GENERR);
	}

	return (SNMP_ERR_NOERROR);
}