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
struct wlan_iface {struct wlan_iface* chanlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlan_iface*) ; 

__attribute__((used)) static void
FUNC5(struct wlan_iface *wif)
{
	FUNC1(wif);
	FUNC0(wif->chanlist);
	FUNC4(wif);
	FUNC2(wif);
	FUNC3(wif);
	FUNC0(wif);
}