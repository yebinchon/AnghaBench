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
struct TYPE_2__ {void* tx_highest; void* tx_mcs_map; void* rx_highest; void* rx_mcs_map; } ;
struct ieee80211_node {TYPE_1__ ni_vht_mcsinfo; int /*<<< orphan*/  ni_vhtcap; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

void
FUNC2(struct ieee80211_node *ni, const uint8_t *ie)
{

	/* vht capability */
	ni->ni_vhtcap = FUNC1(ie + 2);

	/* suppmcs */
	ni->ni_vht_mcsinfo.rx_mcs_map = FUNC0(ie + 6);
	ni->ni_vht_mcsinfo.rx_highest = FUNC0(ie + 8);
	ni->ni_vht_mcsinfo.tx_mcs_map = FUNC0(ie + 10);
	ni->ni_vht_mcsinfo.tx_highest = FUNC0(ie + 12);
}