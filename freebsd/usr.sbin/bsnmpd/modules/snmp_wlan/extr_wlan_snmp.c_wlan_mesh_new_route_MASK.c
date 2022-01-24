#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  imr_dest; } ;
struct wlan_mesh_route {int /*<<< orphan*/  mroute_status; TYPE_1__ imroute; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_ADDR_LEN ; 
 int /*<<< orphan*/  RowStatus_notReady ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_mesh_route*,int /*<<< orphan*/ ,int) ; 

struct wlan_mesh_route *
FUNC3(const uint8_t *dstmac)
{
	struct wlan_mesh_route *wmr;

	if ((wmr = (struct wlan_mesh_route *)FUNC0(sizeof(*wmr))) == NULL)
		return (NULL);

	FUNC2(wmr, 0, sizeof(*wmr));
	FUNC1(wmr->imroute.imr_dest, dstmac, IEEE80211_ADDR_LEN);
	wmr->mroute_status = RowStatus_notReady;

	return (wmr);
}