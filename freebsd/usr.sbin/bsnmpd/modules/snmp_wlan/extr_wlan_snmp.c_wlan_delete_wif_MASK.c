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
struct wlan_iface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct wlan_iface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_if ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*) ; 
 int /*<<< orphan*/  wlan_iface ; 
 int /*<<< orphan*/  wlan_ifaces ; 

__attribute__((used)) static void
FUNC2(struct wlan_iface *wif)
{
	FUNC0(&wlan_ifaces, wif, wlan_iface, w_if);
	FUNC1(wif);
}