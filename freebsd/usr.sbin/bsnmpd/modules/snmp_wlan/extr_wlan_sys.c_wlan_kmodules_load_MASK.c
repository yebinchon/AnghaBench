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

/* Variables and functions */
 int /*<<< orphan*/  LOG_NOTICE ; 
 size_t WLAN_KMOD ; 
 size_t WLAN_KMOD_ACL ; 
 size_t WLAN_KMOD_WEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wmod_names ; 

int
FUNC2(void)
{
	if (FUNC1(wmod_names[WLAN_KMOD]) < 0)
		return (-1);

	if (FUNC1(wmod_names[WLAN_KMOD_ACL]) > 0)
		FUNC0(LOG_NOTICE, "SNMP wlan loaded %s module",
		    wmod_names[WLAN_KMOD_ACL]);

	if (FUNC1(wmod_names[WLAN_KMOD_WEP]) > 0)
		FUNC0(LOG_NOTICE, "SNMP wlan loaded %s module",
		    wmod_names[WLAN_KMOD_WEP]);

	return (0);
}