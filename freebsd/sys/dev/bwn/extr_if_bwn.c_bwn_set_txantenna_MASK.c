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
 int /*<<< orphan*/  BWN_SHARED_PROBE_RESP_PHYCTL ; 
 int BWN_TX_PHY_ANT ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac, int antenna)
{
	uint16_t ant;
	uint16_t tmp;

	ant = FUNC0(antenna);

	/* For ACK/CTS */
	tmp = FUNC1(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL);
	tmp = (tmp & ~BWN_TX_PHY_ANT) | ant;
	FUNC2(mac, BWN_SHARED, BWN_SHARED_ACKCTS_PHYCTL, tmp);
	/* For Probe Resposes */
	tmp = FUNC1(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL);
	tmp = (tmp & ~BWN_TX_PHY_ANT) | ant;
	FUNC2(mac, BWN_SHARED, BWN_SHARED_PROBE_RESP_PHYCTL, tmp);
}