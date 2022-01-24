#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int board_flags2; } ;
struct bwn_softc {TYPE_1__ sc_board_info; int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy_n {int hw_phyrxchain; int hw_phytxchain; } ;
struct TYPE_4__ {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_2__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int B2056_RX0 ; 
 int B2056_RX1 ; 
 int B2056_RX_MIXA_BIAS_AUX ; 
 int B2056_RX_MIXA_BIAS_MAIN ; 
 int B2056_RX_MIXA_CMFB_IDAC ; 
 int B2056_RX_MIXA_LOB_BIAS ; 
 int B2056_RX_MIXA_MAST_BIAS ; 
 int B2056_RX_MIXG_CMFB_IDAC ; 
 int B2056_TX0 ; 
 int B2056_TX1 ; 
 int B2056_TX_GMBB_IDAC ; 
 int BHND_BFL2_APLL_WAR ; 
 int BHND_BFL2_GPLL_WAR2 ; 
 int BHND_BFL2_SINGLEANT_CCK ; 
 char* BHND_NVAR_PDETRANGE2G ; 
 char* BHND_NVAR_PDETRANGE5G ; 
 scalar_t__ BWN_BAND_2G ; 
 scalar_t__ BWN_BAND_5G ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*,char*,char const*,int) ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20LASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20LASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20LDEASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20LDEASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20UASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20UASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20UDEASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS20UDEASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS40ASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS40ASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS40DEASSERTTHRESH0 ; 
 int /*<<< orphan*/  BWN_NPHY_ED_CRS40DEASSERTTHRESH1 ; 
 int /*<<< orphan*/  BWN_NPHY_ENDROP_TLEN ; 
 int /*<<< orphan*/  BWN_NPHY_FORCEFRONT0 ; 
 int /*<<< orphan*/  BWN_NPHY_FORCEFRONT1 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_A0 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_A1 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_A2 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_B0 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_B1 ; 
 int /*<<< orphan*/  BWN_NPHY_PHASETR_B2 ; 
 int /*<<< orphan*/  BWN_NPHY_REV3_C1_CLIP_LOGAIN_B ; 
 int /*<<< orphan*/  BWN_NPHY_REV3_C2_CLIP_LOGAIN_B ; 
 int /*<<< orphan*/  BWN_NPHY_SGILTRNOFFSET ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC7 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*) ; 
 scalar_t__ FUNC10 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int /*<<< orphan*/ ,int,int*) ; 
 size_t FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 

__attribute__((used)) static int FUNC17(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

	/* TX to RX */
	uint8_t tx2rx_events[7] = { 0x4, 0x3, 0x5, 0x2, 0x1, 0x8, 0x1F };
	uint8_t tx2rx_delays[7] = { 8, 4, 4, 4, 4, 6, 1 };
	/* RX to TX */
	uint8_t rx2tx_events_ipa[9] = { 0x0, 0x1, 0x2, 0x8, 0x5, 0x6, 0xF, 0x3,
					0x1F };
	uint8_t rx2tx_delays_ipa[9] = { 8, 6, 6, 4, 4, 16, 43, 1, 1 };
	uint8_t rx2tx_events[9] = { 0x0, 0x1, 0x2, 0x8, 0x5, 0x6, 0x3, 0x4, 0x1F };
	uint8_t rx2tx_delays[9] = { 8, 6, 6, 4, 4, 18, 42, 1, 1 };

	uint16_t vmids[5][4] = {
		{ 0xa2, 0xb4, 0xb4, 0x89, }, /* 0 */
		{ 0xb4, 0xb4, 0xb4, 0x24, }, /* 1 */
		{ 0xa2, 0xb4, 0xb4, 0x74, }, /* 2 */
		{ 0xa2, 0xb4, 0xb4, 0x270, }, /* 3 */
		{ 0xa2, 0xb4, 0xb4, 0x00, }, /* 4 and 5 */
	};
	uint16_t gains[5][4] = {
		{ 0x02, 0x02, 0x02, 0x00, }, /* 0 */
		{ 0x02, 0x02, 0x02, 0x02, }, /* 1 */
		{ 0x02, 0x02, 0x02, 0x04, }, /* 2 */
		{ 0x02, 0x02, 0x02, 0x00, }, /* 3 */
		{ 0x02, 0x02, 0x02, 0x00, }, /* 4 and 5 */
	};
	uint16_t *vmid, *gain;

	const char *pdet_range_var;
	uint8_t pdet_range;
	uint16_t tmp16;
	uint32_t tmp32;
	int error;

	FUNC4(mac, BWN_NPHY_FORCEFRONT0, 0x1f8);
	FUNC4(mac, BWN_NPHY_FORCEFRONT1, 0x1f8);

	tmp32 = FUNC12(mac, FUNC2(30, 0));
	tmp32 &= 0xffffff;
	FUNC13(mac, FUNC2(30, 0), tmp32);

	FUNC4(mac, BWN_NPHY_PHASETR_A0, 0x0125);
	FUNC4(mac, BWN_NPHY_PHASETR_A1, 0x01B3);
	FUNC4(mac, BWN_NPHY_PHASETR_A2, 0x0105);
	FUNC4(mac, BWN_NPHY_PHASETR_B0, 0x016E);
	FUNC4(mac, BWN_NPHY_PHASETR_B1, 0x00CD);
	FUNC4(mac, BWN_NPHY_PHASETR_B2, 0x0020);

	FUNC4(mac, BWN_NPHY_REV3_C1_CLIP_LOGAIN_B, 0x000C);
	FUNC4(mac, BWN_NPHY_REV3_C2_CLIP_LOGAIN_B, 0x000C);

	/* TX to RX */
	FUNC11(mac, 1, tx2rx_events, tx2rx_delays,
				 FUNC16(tx2rx_events));

	/* RX to TX */
	if (FUNC10(mac))
		FUNC11(mac, 0, rx2tx_events_ipa,
				rx2tx_delays_ipa, FUNC16(rx2tx_events_ipa));
	if (nphy->hw_phyrxchain != 3 &&
	    nphy->hw_phyrxchain != nphy->hw_phytxchain) {
		if (FUNC10(mac)) {
			rx2tx_delays[5] = 59;
			rx2tx_delays[6] = 1;
			rx2tx_events[7] = 0x1F;
		}
		FUNC11(mac, 0, rx2tx_events, rx2tx_delays,
					 FUNC16(rx2tx_events));
	}

	tmp16 = (FUNC7(mac) == BWN_BAND_2G) ?
		0x2 : 0x9C40;
	FUNC4(mac, BWN_NPHY_ENDROP_TLEN, tmp16);

	FUNC3(mac, BWN_NPHY_SGILTRNOFFSET, 0xF0FF, 0x0700);

	if (!FUNC8(mac)) {
		FUNC13(mac, FUNC2(16, 3), 0x18D);
		FUNC13(mac, FUNC2(16, 127), 0x18D);
	} else {
		FUNC13(mac, FUNC2(16, 3), 0x14D);
		FUNC13(mac, FUNC2(16, 127), 0x14D);
	}

	FUNC9(mac);

	FUNC13(mac, FUNC1(8, 0), 2);
	FUNC13(mac, FUNC1(8, 16), 2);

	if (FUNC7(mac) == BWN_BAND_2G)
		pdet_range_var = BHND_NVAR_PDETRANGE2G;
	else
		pdet_range_var = BHND_NVAR_PDETRANGE5G;

	error = FUNC6(sc->sc_dev, pdet_range_var,
	    &pdet_range);
	if (error) {
		FUNC0(mac->mac_sc, "Error reading PDet range %s from "
		    "NVRAM: %d\n", pdet_range_var, error);
		return (error);
	}

	/* uint16_t min() */
	vmid = vmids[FUNC15(pdet_range, 4)];
	gain = gains[FUNC15(pdet_range, 4)];
	switch (pdet_range) {
	case 3:
		if (!(mac->mac_phy.rev >= 4 &&
		      FUNC7(mac) == BWN_BAND_2G))
			break;
		/* FALL THROUGH */
	case 0:
	case 1:
		FUNC14(mac, FUNC1(8, 0x08), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x18), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x0c), 4, gain);
		FUNC14(mac, FUNC1(8, 0x1c), 4, gain);
		break;
	case 2:
		if (mac->mac_phy.rev >= 6) {
			if (FUNC7(mac) == BWN_BAND_2G)
				vmid[3] = 0x94;
			else
				vmid[3] = 0x8e;
			gain[3] = 3;
		} else if (mac->mac_phy.rev == 5) {
			vmid[3] = 0x84;
			gain[3] = 2;
		}
		FUNC14(mac, FUNC1(8, 0x08), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x18), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x0c), 4, gain);
		FUNC14(mac, FUNC1(8, 0x1c), 4, gain);
		break;
	case 4:
	case 5:
		if (FUNC7(mac) != BWN_BAND_2G) {
			if (pdet_range == 4) {
				vmid[3] = 0x8e;
				tmp16 = 0x96;
				gain[3] = 0x2;
			} else {
				vmid[3] = 0x89;
				tmp16 = 0x89;
				gain[3] = 0;
			}
		} else {
			if (pdet_range == 4) {
				vmid[3] = 0x89;
				tmp16 = 0x8b;
				gain[3] = 0x2;
			} else {
				vmid[3] = 0x74;
				tmp16 = 0x70;
				gain[3] = 0;
			}
		}
		FUNC14(mac, FUNC1(8, 0x08), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x0c), 4, gain);
		vmid[3] = tmp16;
		FUNC14(mac, FUNC1(8, 0x18), 4, vmid);
		FUNC14(mac, FUNC1(8, 0x1c), 4, gain);
		break;
	}

	FUNC5(mac, B2056_RX0 | B2056_RX_MIXA_MAST_BIAS, 0x00);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXA_MAST_BIAS, 0x00);
	FUNC5(mac, B2056_RX0 | B2056_RX_MIXA_BIAS_MAIN, 0x06);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXA_BIAS_MAIN, 0x06);
	FUNC5(mac, B2056_RX0 | B2056_RX_MIXA_BIAS_AUX, 0x07);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXA_BIAS_AUX, 0x07);
	FUNC5(mac, B2056_RX0 | B2056_RX_MIXA_LOB_BIAS, 0x88);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXA_LOB_BIAS, 0x88);
	FUNC5(mac, B2056_RX0 | B2056_RX_MIXA_CMFB_IDAC, 0x00);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXA_CMFB_IDAC, 0x00);
	FUNC5(mac, B2056_RX0 | B2056_RX_MIXG_CMFB_IDAC, 0x00);
	FUNC5(mac, B2056_RX1 | B2056_RX_MIXG_CMFB_IDAC, 0x00);

	/* N PHY WAR TX Chain Update with hw_phytxchain as argument */

	if ((sc->sc_board_info.board_flags2 & BHND_BFL2_APLL_WAR &&
	     FUNC7(mac) == BWN_BAND_5G) ||
	    (sc->sc_board_info.board_flags2 & BHND_BFL2_GPLL_WAR2 &&
	     FUNC7(mac) == BWN_BAND_2G))
		tmp32 = 0x00088888;
	else
		tmp32 = 0x88888888;
	FUNC13(mac, FUNC2(30, 1), tmp32);
	FUNC13(mac, FUNC2(30, 2), tmp32);
	FUNC13(mac, FUNC2(30, 3), tmp32);

	if (mac->mac_phy.rev == 4 &&
	    FUNC7(mac) == BWN_BAND_5G) {
		FUNC5(mac, B2056_TX0 | B2056_TX_GMBB_IDAC,
				0x70);
		FUNC5(mac, B2056_TX1 | B2056_TX_GMBB_IDAC,
				0x70);
	}

	/* Dropped probably-always-true condition */
	FUNC4(mac, BWN_NPHY_ED_CRS40ASSERTTHRESH0, 0x03eb);
	FUNC4(mac, BWN_NPHY_ED_CRS40ASSERTTHRESH1, 0x03eb);
	FUNC4(mac, BWN_NPHY_ED_CRS40DEASSERTTHRESH0, 0x0341);
	FUNC4(mac, BWN_NPHY_ED_CRS40DEASSERTTHRESH1, 0x0341);
	FUNC4(mac, BWN_NPHY_ED_CRS20LASSERTTHRESH0, 0x042b);
	FUNC4(mac, BWN_NPHY_ED_CRS20LASSERTTHRESH1, 0x042b);
	FUNC4(mac, BWN_NPHY_ED_CRS20LDEASSERTTHRESH0, 0x0381);
	FUNC4(mac, BWN_NPHY_ED_CRS20LDEASSERTTHRESH1, 0x0381);
	FUNC4(mac, BWN_NPHY_ED_CRS20UASSERTTHRESH0, 0x042b);
	FUNC4(mac, BWN_NPHY_ED_CRS20UASSERTTHRESH1, 0x042b);
	FUNC4(mac, BWN_NPHY_ED_CRS20UDEASSERTTHRESH0, 0x0381);
	FUNC4(mac, BWN_NPHY_ED_CRS20UDEASSERTTHRESH1, 0x0381);

	if (mac->mac_phy.rev >= 6 && sc->sc_board_info.board_flags2 & BHND_BFL2_SINGLEANT_CCK)
		; /* TODO: 0x0080000000000000 HF */

	return (0);
}