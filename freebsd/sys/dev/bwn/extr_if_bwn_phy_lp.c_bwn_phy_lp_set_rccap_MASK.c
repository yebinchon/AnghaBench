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
typedef  int uint8_t ;
struct bwn_phy_lp {int plp_rccap; } ;
struct TYPE_2__ {int rev; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_B2062_N_RXBB_CALIB2 ; 
 int /*<<< orphan*/  BWN_B2062_N_TXCTL_A ; 
 int /*<<< orphan*/  BWN_B2062_S_RXG_CNT16 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	uint8_t rc_cap = (plp->plp_rccap & 0x1f) >> 1;

	if (mac->mac_phy.rev == 1)
		rc_cap = FUNC2(rc_cap + 5, 15);

	FUNC0(mac, BWN_B2062_N_RXBB_CALIB2,
	    FUNC1(plp->plp_rccap - 4, 0x80));
	FUNC0(mac, BWN_B2062_N_TXCTL_A, rc_cap | 0x80);
	FUNC0(mac, BWN_B2062_S_RXG_CNT16,
	    ((plp->plp_rccap & 0x1f) >> 2) | 0x80);
}