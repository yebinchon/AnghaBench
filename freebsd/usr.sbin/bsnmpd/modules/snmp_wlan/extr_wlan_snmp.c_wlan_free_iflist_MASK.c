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
 struct wlan_iface* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_if ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_iface*) ; 
 int /*<<< orphan*/  wlan_ifaces ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct wlan_iface *w;

	while ((w = FUNC0(&wlan_ifaces)) != NULL) {
		FUNC1(&wlan_ifaces, w_if);
		FUNC2(w);
	}
}