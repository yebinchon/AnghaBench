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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct bwn_phy_lp_iq_est {int ie_iqprod; int ie_ipwr; int ie_qpwr; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_CRSGAIN_CTL ; 
 int /*<<< orphan*/  BWN_PHY_IQ_ACC_HI_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_ACC_LO_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_I_PWR_ACC_HI_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_I_PWR_ACC_LO_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_NUM_SMPLS_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_Q_PWR_ACC_HI_ADDR ; 
 int /*<<< orphan*/  BWN_PHY_IQ_Q_PWR_ACC_LO_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct bwn_mac *mac, uint16_t sample, uint8_t time,
    struct bwn_phy_lp_iq_est *ie)
{
	int i;

	FUNC0(mac, BWN_PHY_CRSGAIN_CTL, 0xfff7);
	FUNC4(mac, BWN_PHY_IQ_NUM_SMPLS_ADDR, sample);
	FUNC3(mac, BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, 0xff00, time);
	FUNC0(mac, BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, 0xfeff);
	FUNC2(mac, BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR, 0x200);

	for (i = 0; i < 500; i++) {
		if (!(FUNC1(mac,
		    BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR) & 0x200))
			break;
		FUNC5(1000);
	}
	if ((FUNC1(mac, BWN_PHY_IQ_ENABLE_WAIT_TIME_ADDR) & 0x200)) {
		FUNC2(mac, BWN_PHY_CRSGAIN_CTL, 0x8);
		return 0;
	}

	ie->ie_iqprod = FUNC1(mac, BWN_PHY_IQ_ACC_HI_ADDR);
	ie->ie_iqprod <<= 16;
	ie->ie_iqprod |= FUNC1(mac, BWN_PHY_IQ_ACC_LO_ADDR);
	ie->ie_ipwr = FUNC1(mac, BWN_PHY_IQ_I_PWR_ACC_HI_ADDR);
	ie->ie_ipwr <<= 16;
	ie->ie_ipwr |= FUNC1(mac, BWN_PHY_IQ_I_PWR_ACC_LO_ADDR);
	ie->ie_qpwr = FUNC1(mac, BWN_PHY_IQ_Q_PWR_ACC_HI_ADDR);
	ie->ie_qpwr <<= 16;
	ie->ie_qpwr |= FUNC1(mac, BWN_PHY_IQ_Q_PWR_ACC_LO_ADDR);

	FUNC2(mac, BWN_PHY_CRSGAIN_CTL, 0x8);
	return 1;
}