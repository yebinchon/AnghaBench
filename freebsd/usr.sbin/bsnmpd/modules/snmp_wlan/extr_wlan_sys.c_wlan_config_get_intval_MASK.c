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
 scalar_t__ FUNC0 (struct wlan_iface*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif, int op)
{
	int val = 0;
	size_t argsize = 0;

	if (FUNC0(wif, op) < 0)
		return (0);
	if (FUNC2(wif->wname, op, &val, NULL, &argsize, 0) < 0)
		return (-1);
	FUNC1(wif, op, val);

	return (0);
}