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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct bwn_nphy_iq_est {int i0_pwr; int q0_pwr; int iq0_prod; int i1_pwr; int q1_pwr; int iq1_prod; } ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_IQEST_CMD ; 
 int BWN_NPHY_IQEST_CMD_MODE ; 
 int BWN_NPHY_IQEST_CMD_START ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IPACC_HI0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IPACC_HI1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IPACC_LO0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IPACC_LO1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IQACC_HI0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IQACC_HI1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IQACC_LO0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_IQACC_LO1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_QPACC_HI0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_QPACC_HI1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_QPACC_LO0 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_QPACC_LO1 ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_SAMCNT ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_WT ; 
 int /*<<< orphan*/  BWN_NPHY_IQEST_WT_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_nphy_iq_est*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct bwn_mac *mac, struct bwn_nphy_iq_est *est,
				uint16_t samps, uint8_t time, bool wait)
{
	int i;
	uint16_t tmp;

	FUNC4(mac, BWN_NPHY_IQEST_SAMCNT, samps);
	FUNC3(mac, BWN_NPHY_IQEST_WT, ~BWN_NPHY_IQEST_WT_VAL, time);
	if (wait)
		FUNC2(mac, BWN_NPHY_IQEST_CMD, BWN_NPHY_IQEST_CMD_MODE);
	else
		FUNC0(mac, BWN_NPHY_IQEST_CMD, ~BWN_NPHY_IQEST_CMD_MODE);

	FUNC2(mac, BWN_NPHY_IQEST_CMD, BWN_NPHY_IQEST_CMD_START);

	for (i = 1000; i; i--) {
		tmp = FUNC1(mac, BWN_NPHY_IQEST_CMD);
		if (!(tmp & BWN_NPHY_IQEST_CMD_START)) {
			est->i0_pwr = (FUNC1(mac, BWN_NPHY_IQEST_IPACC_HI0) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_IPACC_LO0);
			est->q0_pwr = (FUNC1(mac, BWN_NPHY_IQEST_QPACC_HI0) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_QPACC_LO0);
			est->iq0_prod = (FUNC1(mac, BWN_NPHY_IQEST_IQACC_HI0) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_IQACC_LO0);

			est->i1_pwr = (FUNC1(mac, BWN_NPHY_IQEST_IPACC_HI1) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_IPACC_LO1);
			est->q1_pwr = (FUNC1(mac, BWN_NPHY_IQEST_QPACC_HI1) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_QPACC_LO1);
			est->iq1_prod = (FUNC1(mac, BWN_NPHY_IQEST_IQACC_HI1) << 16) |
					FUNC1(mac, BWN_NPHY_IQEST_IQACC_LO1);
			return;
		}
		FUNC5(10);
	}
	FUNC6(est, 0, sizeof(*est));
}