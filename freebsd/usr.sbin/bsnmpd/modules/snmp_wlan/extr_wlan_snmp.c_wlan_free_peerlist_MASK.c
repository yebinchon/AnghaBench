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
struct wlan_peer {int dummy; } ;
struct wlan_iface {int /*<<< orphan*/  peerlist; } ;

/* Variables and functions */
 struct wlan_peer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_peer*) ; 
 int /*<<< orphan*/  wp ; 

__attribute__((used)) static void
FUNC4(struct wlan_iface *wif)
{
	struct wlan_peer *wip;

	while ((wip = FUNC0(&wif->peerlist)) != NULL) {
		FUNC2(&wif->peerlist, wp);
		FUNC3(wip);
	}

	FUNC1(&wif->peerlist);
}