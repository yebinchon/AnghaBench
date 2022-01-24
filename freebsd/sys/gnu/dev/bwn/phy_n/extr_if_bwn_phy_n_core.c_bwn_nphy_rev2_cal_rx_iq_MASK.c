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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_phy_n {int rxcalparams; } ;
struct bwn_nphy_txgains {int dummy; } ;
struct bwn_nphy_iqcal_params {int cal_gain; } ;
struct bwn_nphy_iq_est {int i0_pwr; int q0_pwr; int i1_pwr; int q1_pwr; } ;
struct TYPE_2__ {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
typedef  scalar_t__ bwn_band_t ;

/* Variables and functions */
 int /*<<< orphan*/  B2055_C1_GENSPARE2 ; 
 int /*<<< orphan*/  B2055_C2_GENSPARE2 ; 
 scalar_t__ BWN_BAND_5G ; 
 int BWN_NPHY_AFECTL_C1 ; 
 int BWN_NPHY_AFECTL_C2 ; 
 int BWN_NPHY_AFECTL_OVER ; 
 int BWN_NPHY_RFCTL_INTC1 ; 
 int BWN_NPHY_RFCTL_INTC2 ; 
 int BWN_NPHY_RFSEQCA ; 
 int BWN_NPHY_RFSEQCA_RXDIS ; 
 int BWN_NPHY_RFSEQCA_RXDIS_SHIFT ; 
 int BWN_NPHY_RFSEQCA_TXEN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  BWN_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct bwn_mac*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,int,struct bwn_nphy_txgains,struct bwn_nphy_iqcal_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bwn_mac*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bwn_mac*,struct bwn_nphy_iq_est*,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct bwn_mac*) ; 
 int FUNC19 (struct bwn_mac*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC22(struct bwn_mac *mac,
			struct bwn_nphy_txgains target, uint8_t type, bool debug)
{
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	int i, j, index;
	uint8_t rfctl[2];
	uint8_t afectl_core;
	uint16_t tmp[6];
	uint16_t cur_hpf1, cur_hpf2, cur_lna;
	uint32_t real, imag;
	bwn_band_t band;

	uint8_t use;
	uint16_t cur_hpf;
	uint16_t lna[3] = { 3, 3, 1 };
	uint16_t hpf1[3] = { 7, 2, 0 };
	uint16_t hpf2[3] = { 2, 0, 0 };
	uint32_t power[3] = { };
	uint16_t gain_save[2];
	uint16_t cal_gain[2];
	struct bwn_nphy_iqcal_params cal_params[2];
	struct bwn_nphy_iq_est est;
	int ret = 0;
	bool playtone = true;
	int desired = 13;

	FUNC17(mac, 1);

	if (mac->mac_phy.rev < 2)
		FUNC13(mac);
	FUNC20(mac, FUNC0(7, 0x110), 2, gain_save);
	for (i = 0; i < 2; i++) {
		FUNC12(mac, i, target, &cal_params[i]);
		cal_gain[i] = cal_params[i].cal_gain;
	}
	FUNC21(mac, FUNC0(7, 0x110), 2, cal_gain);

	for (i = 0; i < 2; i++) {
		if (i == 0) {
			rfctl[0] = BWN_NPHY_RFCTL_INTC1;
			rfctl[1] = BWN_NPHY_RFCTL_INTC2;
			afectl_core = BWN_NPHY_AFECTL_C1;
		} else {
			rfctl[0] = BWN_NPHY_RFCTL_INTC2;
			rfctl[1] = BWN_NPHY_RFCTL_INTC1;
			afectl_core = BWN_NPHY_AFECTL_C2;
		}

		tmp[1] = FUNC1(mac, BWN_NPHY_RFSEQCA);
		tmp[2] = FUNC1(mac, afectl_core);
		tmp[3] = FUNC1(mac, BWN_NPHY_AFECTL_OVER);
		tmp[4] = FUNC1(mac, rfctl[0]);
		tmp[5] = FUNC1(mac, rfctl[1]);

		FUNC3(mac, BWN_NPHY_RFSEQCA,
				~BWN_NPHY_RFSEQCA_RXDIS & 0xFFFF,
				((1 - i) << BWN_NPHY_RFSEQCA_RXDIS_SHIFT));
		FUNC3(mac, BWN_NPHY_RFSEQCA, ~BWN_NPHY_RFSEQCA_TXEN,
				(1 - i));
		FUNC2(mac, afectl_core, 0x0006);
		FUNC2(mac, BWN_NPHY_AFECTL_OVER, 0x0006);

		band = FUNC8(mac);

		if (nphy->rxcalparams & 0xFF000000) {
			if (band == BWN_BAND_5G)
				FUNC4(mac, rfctl[0], 0x140);
			else
				FUNC4(mac, rfctl[0], 0x110);
		} else {
			if (band == BWN_BAND_5G)
				FUNC4(mac, rfctl[0], 0x180);
			else
				FUNC4(mac, rfctl[0], 0x120);
		}

		if (band == BWN_BAND_5G)
			FUNC4(mac, rfctl[1], 0x148);
		else
			FUNC4(mac, rfctl[1], 0x114);

		if (nphy->rxcalparams & 0x10000) {
			FUNC6(mac, B2055_C1_GENSPARE2, 0xFC,
					(i + 1));
			FUNC6(mac, B2055_C2_GENSPARE2, 0xFC,
					(2 - i));
		}

		for (j = 0; j < 4; j++) {
			if (j < 3) {
				cur_lna = lna[j];
				cur_hpf1 = hpf1[j];
				cur_hpf2 = hpf2[j];
			} else {
				if (power[1] > 10000) {
					use = 1;
					cur_hpf = cur_hpf1;
					index = 2;
				} else {
					if (power[0] > 10000) {
						use = 1;
						cur_hpf = cur_hpf1;
						index = 1;
					} else {
						index = 0;
						use = 2;
						cur_hpf = cur_hpf2;
					}
				}
				cur_lna = lna[index];
				cur_hpf1 = hpf1[index];
				cur_hpf2 = hpf2[index];
				cur_hpf += desired - FUNC9(power[index]);
				cur_hpf = FUNC7(cur_hpf, 0, 10);
				if (use == 1)
					cur_hpf1 = cur_hpf;
				else
					cur_hpf2 = cur_hpf;
			}

			tmp[0] = ((cur_hpf2 << 8) | (cur_hpf1 << 4) |
					(cur_lna << 2));
			FUNC14(mac, 0x400, tmp[0], 3,
									false);
			FUNC11(mac, BWN_RFSEQ_RESET2RX);
			FUNC18(mac);

			if (playtone) {
				ret = FUNC19(mac, 4000,
						(nphy->rxcalparams & 0xFFFF),
						false, false, true);
				playtone = false;
			} else {
				FUNC15(mac, 160, 0xFFFF, 0, false,
						     false, true);
			}

			if (ret == 0) {
				if (j < 3) {
					FUNC16(mac, &est, 1024, 32,
									false);
					if (i == 0) {
						real = est.i0_pwr;
						imag = est.q0_pwr;
					} else {
						real = est.i1_pwr;
						imag = est.q1_pwr;
					}
					power[i] = ((real + imag) / 1024) + 1;
				} else {
					FUNC10(mac, 1 << i);
				}
				FUNC18(mac);
			}

			if (ret != 0)
				break;
		}

		FUNC5(mac, B2055_C1_GENSPARE2, 0xFC);
		FUNC5(mac, B2055_C2_GENSPARE2, 0xFC);
		FUNC4(mac, rfctl[1], tmp[5]);
		FUNC4(mac, rfctl[0], tmp[4]);
		FUNC4(mac, BWN_NPHY_AFECTL_OVER, tmp[3]);
		FUNC4(mac, afectl_core, tmp[2]);
		FUNC4(mac, BWN_NPHY_RFSEQCA, tmp[1]);

		if (ret != 0)
			break;
	}

	FUNC14(mac, 0x400, 0, 3, true);
	FUNC11(mac, BWN_RFSEQ_RESET2RX);
	FUNC21(mac, FUNC0(7, 0x110), 2, gain_save);

	FUNC17(mac, 0);

	return ret;
}