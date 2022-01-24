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
struct wlan_scan_result {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  scanlist; } ;

/* Variables and functions */
 struct wlan_scan_result* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_scan_result*) ; 
 int /*<<< orphan*/  wsr ; 

__attribute__((used)) static void
FUNC4(struct wlan_iface *wif)
{
	struct wlan_scan_result *sr;

	while ((sr = FUNC0(&wif->scanlist)) != NULL) {
		FUNC2(&wif->scanlist, wsr);
		FUNC3(sr);
	}

	FUNC1(&wif->scanlist);
}