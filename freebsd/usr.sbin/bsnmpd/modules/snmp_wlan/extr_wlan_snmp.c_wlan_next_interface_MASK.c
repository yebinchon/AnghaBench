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
 struct wlan_iface* FUNC0 (struct wlan_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_if ; 

__attribute__((used)) static struct wlan_iface *
FUNC1(struct wlan_iface *wif)
{
	if (wif == NULL)
		return (NULL);

	return (FUNC0(wif, w_if));
}