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
typedef  int uint16_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_SHARED ; 
 int /*<<< orphan*/  BWN_SHARED_ACKCTS_PHYCTL ; 
 int /*<<< orphan*/  BWN_SHARED_BEACON_PHYCTL ; 
 int /*<<< orphan*/  BWN_SHARED_PROBE_RESP_PHYCTL ; 
 int BWN_TX_PHY_ANT01AUTO ; 
 int BWN_TX_PHY_ENC_CCK ; 
 int BWN_TX_PHY_TXPWR ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct bwn_mac *mac)
{
	uint16_t ctl;

	ctl = (BWN_TX_PHY_ENC_CCK | BWN_TX_PHY_ANT01AUTO |
	    BWN_TX_PHY_TXPWR);
	FUNC0(mac, BWN_SHARED, BWN_SHARED_BEACON_PHYCTL, ctl);
	FUNC0(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL, ctl);
	FUNC0(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL, ctl);
}