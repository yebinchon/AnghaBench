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
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_AFE_DDFS ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct bwn_mac *mac, int on)
{

	if (on) {
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xe0ff);
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_2,
		    (mac->mac_phy.rev >= 2) ? 0xf7f7 : 0xffe7);
		return;
	}

	if (mac->mac_phy.rev >= 2) {
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x83ff);
		FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x1f00);
		FUNC0(mac, BWN_PHY_AFE_DDFS, 0x80ff);
		FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xdfff);
		FUNC1(mac, BWN_PHY_RF_OVERRIDE_2, 0x0808);
		return;
	}

	FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xe0ff);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x1f00);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xfcff);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_2, 0x0018);
}