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
typedef  int uint32_t ;
struct bwn_phy_lp_iq_est {int ie_ipwr; int ie_qpwr; } ;
struct bwn_mac {int dummy; } ;
typedef  int /*<<< orphan*/  ie ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_B2062_N_TXCTL_A ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int,struct bwn_phy_lp_iq_est*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_phy_lp_iq_est*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct bwn_mac *mac)
{
	struct bwn_phy_lp_iq_est ie;
	int i, index = -1;
	uint32_t tmp;

	FUNC8(&ie, 0, sizeof(ie));

	FUNC7(mac, 1, 1);
	FUNC1(mac, BWN_PHY_AFE_CTL_OVR, 1);
	FUNC0(mac, BWN_PHY_AFE_CTL_OVRVAL, 0xfffe);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x800);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x800);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x8);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x8);
	FUNC2(mac, BWN_B2062_N_TXCTL_A, 0x80);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_0, 0x80);
	FUNC1(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x80);
	for (i = 0; i < 32; i++) {
		FUNC6(mac, i);
		FUNC4(mac, 1, 1, 5, 5, 0);
		if (!(FUNC5(mac, 1000, 32, &ie)))
			continue;
		tmp = (ie.ie_ipwr + ie.ie_qpwr) / 1000;
		if ((tmp > 4000) && (tmp < 10000)) {
			index = i;
			break;
		}
	}
	FUNC3(mac);
	return (index);
}