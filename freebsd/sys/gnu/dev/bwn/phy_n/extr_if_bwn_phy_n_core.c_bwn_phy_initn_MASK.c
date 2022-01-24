#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_12__ {int board_flags; int board_flags2; scalar_t__ board_vendor; scalar_t__ board_type; } ;
struct bwn_softc {TYPE_6__ sc_board_info; int /*<<< orphan*/  sc_chipc; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_9__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_8__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_7__ {int /*<<< orphan*/  center_freq; } ;
struct bwn_phy_n {int use_int_tx_iq_lo_cal; int crsminpwr_adjusted; int noisevars_adjusted; int* papd_epsilon_offset; int txpwrctrl; int phyrxchain; scalar_t__ mphase_cal_phase_id; int measure_hold; int antsel_type; int perical; TYPE_5__* txpwrindex; int /*<<< orphan*/ * cal_orig_pwr_idx; scalar_t__ mute; TYPE_4__ iqcal_chanspec_5G; TYPE_3__ iqcal_chanspec_2G; TYPE_2__ rssical_chanspec_5G; TYPE_1__ rssical_chanspec_2G; int /*<<< orphan*/  preamble_override; scalar_t__ deaf_count; scalar_t__ tsspos_2g; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_nphy_txgains {int dummy; } ;
struct bwn_mac {struct bwn_phy mac_phy; struct bwn_softc* mac_sc; } ;
typedef  scalar_t__ bwn_band_t ;
struct TYPE_11__ {int /*<<< orphan*/  index_internal; } ;

/* Variables and functions */
 int BHND_BFL2_INTERNDET_TXIQCAL ; 
 int BHND_BFL2_SKWRKFEM_BRD ; 
 int BHND_BFL_EXTLNA ; 
 scalar_t__ BHND_BOARD_BCM943224M93 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BHND_NVAR_TSSIPOS2G ; 
 scalar_t__ BWN_BAND_2G ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER1 ; 
 int /*<<< orphan*/  BWN_NPHY_AFESEQ_TX2RX_PUD_20M ; 
 int /*<<< orphan*/  BWN_NPHY_AFESEQ_TX2RX_PUD_40M ; 
 int /*<<< orphan*/  BWN_NPHY_BBCFG ; 
 int BWN_NPHY_BBCFG_RSTCCA ; 
 int /*<<< orphan*/  BWN_NPHY_BPHY_CTL3 ; 
 int BWN_NPHY_BPHY_CTL3_SCALE ; 
 int BWN_NPHY_BPHY_CTL3_SCALE_SHIFT ; 
 int /*<<< orphan*/  BWN_NPHY_DUP40_BL ; 
 int /*<<< orphan*/  BWN_NPHY_DUP40_GFBL ; 
 int /*<<< orphan*/  BWN_NPHY_EPS_TABLE_ADJ0 ; 
 int /*<<< orphan*/  BWN_NPHY_EPS_TABLE_ADJ1 ; 
 int /*<<< orphan*/  BWN_NPHY_MIMO_CRSTXEXT ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN0 ; 
 int /*<<< orphan*/  BWN_NPHY_PAPD_EN1 ; 
 int /*<<< orphan*/  BWN_NPHY_PLOAD_CSENSE_EXTLEN ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER3 ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER4 ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER5 ; 
 int /*<<< orphan*/  BWN_NPHY_REV7_RF_CTL_OVER6 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC3 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_INTC4 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQMODE ; 
 int BWN_NPHY_RFSEQMODE_CAOVER ; 
 int BWN_NPHY_RFSEQMODE_TROVER ; 
 int /*<<< orphan*/  BWN_NPHY_TXF_40CO_B1S0 ; 
 int /*<<< orphan*/  BWN_NPHY_TXF_40CO_B1S1 ; 
 int /*<<< orphan*/  BWN_NPHY_TXF_40CO_B32S1 ; 
 int /*<<< orphan*/  BWN_NPHY_TXMACDELAY ; 
 int /*<<< orphan*/  BWN_NPHY_TXMACIF_HOLDOFF ; 
 int /*<<< orphan*/  BWN_NPHY_TXREALFD ; 
 int /*<<< orphan*/  BWN_NPHY_TXRIFS_FRDEL ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  BWN_RFSEQ_RX2TX ; 
 scalar_t__ PCI_VENDOR_APPLE ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*) ; 
 scalar_t__ FUNC11 (struct bwn_mac*,struct bwn_nphy_txgains,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,struct bwn_nphy_txgains,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 struct bwn_nphy_txgains FUNC16 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*) ; 
 scalar_t__ FUNC18 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC19 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC22 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC23 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC24 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC25 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct bwn_mac*) ; 
 int FUNC27 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC29 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC30 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC31 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC32 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC33 (struct bwn_mac*,int) ; 
 int FUNC34 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC35 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC36 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct bwn_mac*) ; 
 int FUNC38 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC39 (struct bwn_mac*,int) ; 

__attribute__((used)) static int FUNC40(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = phy->phy_n;
	uint8_t tx_pwr_state;
	struct bwn_nphy_txgains target;
	int error;
	uint16_t tmp;
	bwn_band_t tmp2;
	bool do_rssi_cal;

	uint16_t clip[2];
	bool do_cal = false;

	if (mac->mac_phy.rev >= 3) {
		error = FUNC7(sc->sc_dev, BHND_NVAR_TSSIPOS2G,
		    &nphy->tsspos_2g);
		if (error) {
			FUNC1(mac->mac_sc, "Error reading %s from "
			    "NVRAM: %d\n", BHND_NVAR_TSSIPOS2G, error);
			return (error);
		}
	} else {
		nphy->tsspos_2g = 0;
	}

	if ((mac->mac_phy.rev >= 3) &&
	   (sc->sc_board_info.board_flags & BHND_BFL_EXTLNA) &&
	   (FUNC8(mac) == BWN_BAND_2G))
	{
		FUNC0(sc->sc_chipc, 0x40, 0x40);
	}
	nphy->use_int_tx_iq_lo_cal = FUNC18(mac) ||
		phy->rev >= 7 ||
		(phy->rev >= 5 &&
		 sc->sc_board_info.board_flags2 & BHND_BFL2_INTERNDET_TXIQCAL);
	nphy->deaf_count = 0;
	FUNC28(mac);
	nphy->crsminpwr_adjusted = false;
	nphy->noisevars_adjusted = false;

	/* Clear all overrides */
	if (mac->mac_phy.rev >= 3) {
		FUNC6(mac, BWN_NPHY_TXF_40CO_B1S1, 0);
		FUNC6(mac, BWN_NPHY_RFCTL_OVER, 0);
		if (phy->rev >= 7) {
			FUNC6(mac, BWN_NPHY_REV7_RF_CTL_OVER3, 0);
			FUNC6(mac, BWN_NPHY_REV7_RF_CTL_OVER4, 0);
			FUNC6(mac, BWN_NPHY_REV7_RF_CTL_OVER5, 0);
			FUNC6(mac, BWN_NPHY_REV7_RF_CTL_OVER6, 0);
		}
		if (phy->rev >= 19) {
			/* TODO */
		}

		FUNC6(mac, BWN_NPHY_TXF_40CO_B1S0, 0);
		FUNC6(mac, BWN_NPHY_TXF_40CO_B32S1, 0);
	} else {
		FUNC6(mac, BWN_NPHY_RFCTL_OVER, 0);
	}
	FUNC6(mac, BWN_NPHY_RFCTL_INTC1, 0);
	FUNC6(mac, BWN_NPHY_RFCTL_INTC2, 0);
	if (mac->mac_phy.rev < 6) {
		FUNC6(mac, BWN_NPHY_RFCTL_INTC3, 0);
		FUNC6(mac, BWN_NPHY_RFCTL_INTC4, 0);
	}
	FUNC2(mac, BWN_NPHY_RFSEQMODE,
		     ~(BWN_NPHY_RFSEQMODE_CAOVER |
		       BWN_NPHY_RFSEQMODE_TROVER));
	if (mac->mac_phy.rev >= 3)
		FUNC6(mac, BWN_NPHY_AFECTL_OVER1, 0);
	FUNC6(mac, BWN_NPHY_AFECTL_OVER, 0);

	if (mac->mac_phy.rev <= 2) {
		tmp = (mac->mac_phy.rev == 2) ? 0x3B : 0x40;
		FUNC5(mac, BWN_NPHY_BPHY_CTL3,
				~BWN_NPHY_BPHY_CTL3_SCALE,
				tmp << BWN_NPHY_BPHY_CTL3_SCALE_SHIFT);
	}
	FUNC6(mac, BWN_NPHY_AFESEQ_TX2RX_PUD_20M, 0x20);
	FUNC6(mac, BWN_NPHY_AFESEQ_TX2RX_PUD_40M, 0x20);

	if (sc->sc_board_info.board_flags2 & BHND_BFL2_SKWRKFEM_BRD ||
	    (sc->sc_board_info.board_vendor == PCI_VENDOR_APPLE &&
	     sc->sc_board_info.board_type == BHND_BOARD_BCM943224M93))
		FUNC6(mac, BWN_NPHY_TXREALFD, 0xA0);
	else
		FUNC6(mac, BWN_NPHY_TXREALFD, 0xB8);
	FUNC6(mac, BWN_NPHY_MIMO_CRSTXEXT, 0xC8);
	FUNC6(mac, BWN_NPHY_PLOAD_CSENSE_EXTLEN, 0x50);
	FUNC6(mac, BWN_NPHY_TXRIFS_FRDEL, 0x30);

	if (phy->rev < 8)
		FUNC36(mac, nphy->preamble_override);

	FUNC37(mac);

	if (phy->rev < 2) {
		FUNC6(mac, BWN_NPHY_DUP40_GFBL, 0xAA8);
		FUNC6(mac, BWN_NPHY_DUP40_BL, 0x9A4);
	}

	tmp2 = FUNC8(mac);
	if (FUNC18(mac)) {
		FUNC4(mac, BWN_NPHY_PAPD_EN0, 0x1);
		FUNC5(mac, BWN_NPHY_EPS_TABLE_ADJ0, 0x007F,
				nphy->papd_epsilon_offset[0] << 7);
		FUNC4(mac, BWN_NPHY_PAPD_EN1, 0x1);
		FUNC5(mac, BWN_NPHY_EPS_TABLE_ADJ1, 0x007F,
				nphy->papd_epsilon_offset[1] << 7);
		FUNC17(mac);
	} else if (phy->rev >= 5) {
		FUNC14(mac);
	}

	if ((error = FUNC38(mac)))
		return (error);

	/* Reset CCA, in init code it differs a little from standard way */
	FUNC39(mac, 1);
	tmp = FUNC3(mac, BWN_NPHY_BBCFG);
	FUNC6(mac, BWN_NPHY_BBCFG, tmp | BWN_NPHY_BBCFG_RSTCCA);
	FUNC6(mac, BWN_NPHY_BBCFG, tmp & ~BWN_NPHY_BBCFG_RSTCCA);
	FUNC39(mac, 0);

	FUNC9(mac, true);

	if (phy->rev < 7) {
		FUNC19(mac, false);
		FUNC15(mac, BWN_RFSEQ_RX2TX);
		FUNC15(mac, BWN_RFSEQ_RESET2RX);
		FUNC19(mac, true);
	}

	FUNC13(mac, 0, 0);
	FUNC20(mac, clip);
	if (FUNC8(mac) == BWN_BAND_2G)
		FUNC10(mac);

	tx_pwr_state = nphy->txpwrctrl;
	FUNC33(mac, false);
	if ((error = FUNC34(mac)))
		return (error);
	FUNC31(mac);
	FUNC32(mac);
	FUNC29(mac);

	if (nphy->phyrxchain != 3)
		FUNC25(mac, nphy->phyrxchain);
	if (nphy->mphase_cal_phase_id > 0)
		;/* TODO PHY Periodic Calibration Multi-Phase Restart */

	do_rssi_cal = false;
	if (phy->rev >= 3) {
		if (FUNC8(mac) == BWN_BAND_2G)
			do_rssi_cal = !nphy->rssical_chanspec_2G.center_freq;
		else
			do_rssi_cal = !nphy->rssical_chanspec_5G.center_freq;

		if (do_rssi_cal)
			FUNC23(mac);
		else
			FUNC22(mac);
	} else {
		FUNC23(mac);
	}

	if (!((nphy->measure_hold & 0x6) != 0)) {
		if (FUNC8(mac) == BWN_BAND_2G)
			do_cal = !nphy->iqcal_chanspec_2G.center_freq;
		else
			do_cal = !nphy->iqcal_chanspec_5G.center_freq;

		if (nphy->mute)
			do_cal = false;

		if (do_cal) {
			target = FUNC16(mac);

			if (nphy->antsel_type == 2) {
				error = FUNC27(mac, true);
				if (error)
					return (error);
			}
			if (nphy->perical != 2) {
				FUNC23(mac);
				if (phy->rev >= 3) {
					nphy->cal_orig_pwr_idx[0] =
					    nphy->txpwrindex[0].index_internal;
					nphy->cal_orig_pwr_idx[1] =
					    nphy->txpwrindex[1].index_internal;
					/* TODO N PHY Pre Calibrate TX Gain */
					target = FUNC16(mac);
				}
				if (!FUNC12(mac, target, true, false))
					if (FUNC11(mac, target, 2, 0) == 0)
						FUNC24(mac);
			} else if (nphy->mphase_cal_phase_id == 0)
				;/* N PHY Periodic Calibration with arg 3 */
		} else {
			FUNC21(mac);
		}
	}

	FUNC35(mac);
	FUNC33(mac, tx_pwr_state);
	FUNC6(mac, BWN_NPHY_TXMACIF_HOLDOFF, 0x0015);
	FUNC6(mac, BWN_NPHY_TXMACDELAY, 0x0320);
	if (phy->rev >= 3 && phy->rev <= 6)
		FUNC6(mac, BWN_NPHY_PLOAD_CSENSE_EXTLEN, 0x0032);
	FUNC30(mac);
	if (phy->rev >= 3)
		FUNC26(mac);

	return 0;
}