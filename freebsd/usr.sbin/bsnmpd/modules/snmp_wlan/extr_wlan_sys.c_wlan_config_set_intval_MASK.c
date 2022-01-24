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

/* Variables and functions */
 scalar_t__ SNMP_ERR_NOERROR ; 
 scalar_t__ FUNC0 (struct wlan_iface*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*,int,int) ; 
 scalar_t__ FUNC2 (int,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,size_t*,int) ; 

__attribute__((used)) static int
FUNC4(struct wlan_iface *wif, int op, int sval)
{
	size_t argsize = 0;
	int val;

	if (FUNC0(wif, op) < 0)
		return (-1);
	if (FUNC2(op, sval, &val) != SNMP_ERR_NOERROR)
		return (-1);
	if (FUNC3(wif->wname, op, &val, NULL, &argsize, 1) < 0)
		return (-1);
	FUNC1(wif, op, val);

	return (0);
}