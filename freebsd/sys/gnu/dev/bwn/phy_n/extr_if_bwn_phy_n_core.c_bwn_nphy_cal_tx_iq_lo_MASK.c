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
typedef  size_t uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  channel_type; int /*<<< orphan*/  center_freq; } ;
struct bwn_phy_n {int hang_avoid; int mphase_cal_phase_id; size_t* mphase_txcal_bestcoeffs; int txiqlocal_coeffsvalid; size_t* txiqlocal_bestc; size_t mphase_txcal_cmdidx; TYPE_1__ txiqlocal_chanspec; scalar_t__ mphase_txcal_numcmds; scalar_t__ ipa2g_on; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_nphy_txgains {int dummy; } ;
struct bwn_nphy_iqcal_params {size_t cal_gain; int* ncorr; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 scalar_t__ BWN_BAND_2G ; 
 int /*<<< orphan*/  BWN_NPHY_IQLOCAL_CMD ; 
 int /*<<< orphan*/  BWN_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  BWN_NPHY_IQLOCAL_CMDNNUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 size_t BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL ; 
 size_t BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3 ; 
 size_t BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL ; 
 size_t BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3 ; 
 int BWN_NTAB_TX_IQLO_CAL_STARTCOEFS ; 
 int BWN_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3 ; 
 size_t FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int,struct bwn_nphy_txgains,struct bwn_nphy_iqcal_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwn_mac*) ; 
 int FUNC16 (struct bwn_mac*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*,size_t) ; 
 size_t FUNC18 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct bwn_mac*,int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*,int /*<<< orphan*/ ,int,size_t const*) ; 
 size_t FUNC22 (size_t,size_t) ; 
 size_t* tbl_tx_iqlo_cal_cmds_fullcal ; 
 size_t* tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 ; 
 size_t* tbl_tx_iqlo_cal_cmds_recal ; 
 size_t* tbl_tx_iqlo_cal_cmds_recal_nphyrev3 ; 
 size_t* tbl_tx_iqlo_cal_iqimb_ladder_20 ; 
 size_t* tbl_tx_iqlo_cal_iqimb_ladder_40 ; 
 size_t* tbl_tx_iqlo_cal_loft_ladder_20 ; 
 size_t* tbl_tx_iqlo_cal_loft_ladder_40 ; 
 size_t* tbl_tx_iqlo_cal_startcoefs ; 
 size_t* tbl_tx_iqlo_cal_startcoefs_nphyrev3 ; 

__attribute__((used)) static int FUNC23(struct bwn_mac *mac,
				struct bwn_nphy_txgains target,
				bool full, bool mphase)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
	int i;
	int error = 0;
	int freq;
	bool avoid = false;
	uint8_t length;
	uint16_t tmp, core, type, count, max, numb, last = 0, cmd;
	const uint16_t *table;
	bool phy6or5x;

	uint16_t buffer[11];
	uint16_t diq_start = 0;
	uint16_t save[2];
	uint16_t gain[2];
	struct bwn_nphy_iqcal_params params[2];
	bool updated[2] = { };

	FUNC10(mac, true);

	if (mac->mac_phy.rev >= 4) {
		avoid = nphy->hang_avoid;
		nphy->hang_avoid = false;
	}

	FUNC19(mac, FUNC0(7, 0x110), 2, save);

	for (i = 0; i < 2; i++) {
		FUNC8(mac, i, target, &params[i]);
		gain[i] = params[i].cal_gain;
	}

	FUNC21(mac, FUNC0(7, 0x110), 2, gain);

	FUNC14(mac);
	FUNC13(mac);

	phy6or5x = mac->mac_phy.rev >= 6 ||
		(mac->mac_phy.rev == 5 && nphy->ipa2g_on &&
		FUNC4(mac) == BWN_BAND_2G);
	if (phy6or5x) {
		if (FUNC7(mac)) {
			FUNC21(mac, FUNC0(15, 0), 18,
					tbl_tx_iqlo_cal_loft_ladder_40);
			FUNC21(mac, FUNC0(15, 32), 18,
					tbl_tx_iqlo_cal_iqimb_ladder_40);
		} else {
			FUNC21(mac, FUNC0(15, 0), 18,
					tbl_tx_iqlo_cal_loft_ladder_20);
			FUNC21(mac, FUNC0(15, 32), 18,
					tbl_tx_iqlo_cal_iqimb_ladder_20);
		}
	}

	if (phy->rev >= 19) {
		/* TODO */
	} else if (phy->rev >= 7) {
		FUNC2(mac, BWN_NPHY_IQLOCAL_CMDGCTL, 0x8AD9);
	} else {
		FUNC2(mac, BWN_NPHY_IQLOCAL_CMDGCTL, 0x8AA9);
	}

	if (!FUNC7(mac))
		freq = 2500;
	else
		freq = 5000;

	if (nphy->mphase_cal_phase_id > 2)
		FUNC9(mac, (FUNC7(mac) ? 40 : 20) * 8,
				     0xFFFF, 0, true, false, false);
	else
		error = FUNC16(mac, freq, 250, true, false, false);

	if (error == 0) {
		if (nphy->mphase_cal_phase_id > 2) {
			table = nphy->mphase_txcal_bestcoeffs;
			length = 11;
			if (mac->mac_phy.rev < 3)
				length -= 2;
		} else {
			if (!full && nphy->txiqlocal_coeffsvalid) {
				table = nphy->txiqlocal_bestc;
				length = 11;
				if (mac->mac_phy.rev < 3)
					length -= 2;
			} else {
				full = true;
				if (mac->mac_phy.rev >= 3) {
					table = tbl_tx_iqlo_cal_startcoefs_nphyrev3;
					length = BWN_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3;
				} else {
					table = tbl_tx_iqlo_cal_startcoefs;
					length = BWN_NTAB_TX_IQLO_CAL_STARTCOEFS;
				}
			}
		}

		FUNC21(mac, FUNC0(15, 64), length, table);

		if (full) {
			if (mac->mac_phy.rev >= 3)
				max = BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3;
			else
				max = BWN_NTAB_TX_IQLO_CAL_CMDS_FULLCAL;
		} else {
			if (mac->mac_phy.rev >= 3)
				max = BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3;
			else
				max = BWN_NTAB_TX_IQLO_CAL_CMDS_RECAL;
		}

		if (mphase) {
			count = nphy->mphase_txcal_cmdidx;
			numb = FUNC22(max,
				(uint16_t)(count + nphy->mphase_txcal_numcmds));
		} else {
			count = 0;
			numb = max;
		}

		for (; count < numb; count++) {
			if (full) {
				if (mac->mac_phy.rev >= 3)
					cmd = tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3[count];
				else
					cmd = tbl_tx_iqlo_cal_cmds_fullcal[count];
			} else {
				if (mac->mac_phy.rev >= 3)
					cmd = tbl_tx_iqlo_cal_cmds_recal_nphyrev3[count];
				else
					cmd = tbl_tx_iqlo_cal_cmds_recal[count];
			}

			core = (cmd & 0x3000) >> 12;
			type = (cmd & 0x0F00) >> 8;

			if (phy6or5x && updated[core] == 0) {
				FUNC17(mac, core);
				updated[core] = true;
			}

			tmp = (params[core].ncorr[type] << 8) | 0x66;
			FUNC2(mac, BWN_NPHY_IQLOCAL_CMDNNUM, tmp);

			if (type == 1 || type == 3 || type == 4) {
				buffer[0] = FUNC18(mac,
						FUNC0(15, 69 + core));
				diq_start = buffer[0];
				buffer[0] = 0;
				FUNC20(mac, FUNC0(15, 69 + core),
						0);
			}

			FUNC2(mac, BWN_NPHY_IQLOCAL_CMD, cmd);
			for (i = 0; i < 2000; i++) {
				tmp = FUNC1(mac, BWN_NPHY_IQLOCAL_CMD);
				if (tmp & 0xC000)
					break;
				FUNC3(10);
			}

			FUNC19(mac, FUNC0(15, 96), length,
						buffer);
			FUNC21(mac, FUNC0(15, 64), length,
						buffer);

			if (type == 1 || type == 3 || type == 4)
				buffer[0] = diq_start;
		}

		if (mphase)
			nphy->mphase_txcal_cmdidx = (numb >= max) ? 0 : numb;

		last = (mac->mac_phy.rev < 3) ? 6 : 7;

		if (!mphase || nphy->mphase_cal_phase_id == last) {
			FUNC21(mac, FUNC0(15, 96), 4, buffer);
			FUNC19(mac, FUNC0(15, 80), 4, buffer);
			if (mac->mac_phy.rev < 3) {
				buffer[0] = 0;
				buffer[1] = 0;
				buffer[2] = 0;
				buffer[3] = 0;
			}
			FUNC21(mac, FUNC0(15, 88), 4,
						buffer);
			FUNC19(mac, FUNC0(15, 101), 2,
						buffer);
			FUNC21(mac, FUNC0(15, 85), 2,
						buffer);
			FUNC21(mac, FUNC0(15, 93), 2,
						buffer);
			length = 11;
			if (mac->mac_phy.rev < 3)
				length -= 2;
			FUNC19(mac, FUNC0(15, 96), length,
						nphy->txiqlocal_bestc);
			nphy->txiqlocal_coeffsvalid = true;
			nphy->txiqlocal_chanspec.center_freq =
						FUNC5(mac);
			nphy->txiqlocal_chanspec.channel_type = FUNC6(mac, NULL);
		} else {
			length = 11;
			if (mac->mac_phy.rev < 3)
				length -= 2;
			FUNC19(mac, FUNC0(15, 96), length,
						nphy->mphase_txcal_bestcoeffs);
		}

		FUNC11(mac);
		FUNC2(mac, BWN_NPHY_IQLOCAL_CMDGCTL, 0);
	}

	FUNC12(mac);
	FUNC21(mac, FUNC0(7, 0x110), 2, save);

	if (mac->mac_phy.rev < 2 && (!mphase || nphy->mphase_cal_phase_id == last))
		FUNC15(mac);

	if (mac->mac_phy.rev >= 4)
		nphy->hang_avoid = avoid;

	FUNC10(mac, false);

	return error;
}