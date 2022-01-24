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
struct wlan_iface {scalar_t__ internal; } ;

/* Variables and functions */
 int SNMP_ERR_NOERROR ; 
 int FUNC0 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*) ; 

__attribute__((used)) static int
FUNC2(struct wlan_iface *wif)
{
	int rc = SNMP_ERR_NOERROR;

	if (wif->internal == 0)
		rc = FUNC0(wif);

	if (rc == SNMP_ERR_NOERROR)
		FUNC1(wif);

	return (rc);
}