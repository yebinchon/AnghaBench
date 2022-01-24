#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ieee80211com {int* ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct urtw_softc {int sc_acmctl; int /*<<< orphan*/  sc_mtx; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int* iv_myaddr; } ;
struct TYPE_5__ {int reg; int val; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int URTW_8187B_AC_BE ; 
 int URTW_8187B_AC_BK ; 
 int URTW_8187B_AC_VI ; 
 int URTW_8187B_AC_VO ; 
 int URTW_8225_ADDR_0_MAGIC ; 
 int URTW_8225_ADDR_1_MAGIC ; 
 int URTW_8225_ADDR_2_MAGIC ; 
 int URTW_8225_ADDR_3_MAGIC ; 
 int URTW_8225_ADDR_5_MAGIC ; 
 int URTW_ACM_CONTROL ; 
 int /*<<< orphan*/  URTW_ARFR ; 
 int /*<<< orphan*/  URTW_ATIM_WND ; 
 int /*<<< orphan*/  URTW_BEACON_INTERVAL ; 
 int /*<<< orphan*/  URTW_BRSR_8187B ; 
 int URTW_CONFIG1 ; 
 int URTW_CONFIG3 ; 
 int URTW_CONFIG3_ANAPARAM_WRITE ; 
 int URTW_CW_CONF ; 
 int URTW_CW_CONF_PERPACKET_RETRY ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  URTW_FEMR_FOR_8187B ; 
 int /*<<< orphan*/  URTW_INT_MIG ; 
 int URTW_MSR ; 
 int URTW_MSR_LINK_ENEDCA ; 
 int URTW_RATE_FALLBACK ; 
 int URTW_RATE_FALLBACK_ENABLE ; 
 int /*<<< orphan*/  URTW_RFSW_CTRL ; 
 int /*<<< orphan*/  URTW_RF_PINS_ENABLE ; 
 int /*<<< orphan*/  URTW_RF_PINS_OUTPUT ; 
 int /*<<< orphan*/  URTW_RF_PINS_SELECT ; 
 int URTW_RF_TIMING ; 
 int /*<<< orphan*/  URTW_TID_AC_MAP ; 
 int URTW_TX_AGC_CTL ; 
 int URTW_TX_AGC_CTL_PERPACKET_GAIN ; 
 int URTW_TX_ANTENNA ; 
 int URTW_TX_GAIN_CCK ; 
 int URTW_TX_GAIN_OFDM ; 
 int URTW_WPA_CONFIG ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*,int,int) ; 
 TYPE_1__* urtw_8225v2b_rf_part0 ; 
 TYPE_1__* urtw_8225v2b_rf_part1 ; 
 TYPE_1__* urtw_8225v2b_rf_part2 ; 
 int* urtw_8225v2b_rxgain ; 
 int* urtw_8225z2_agc ; 
 int /*<<< orphan*/  FUNC5 (struct urtw_softc*,int,int*) ; 
 scalar_t__ FUNC6 (struct urtw_softc*,int const*) ; 
 scalar_t__ FUNC7 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC12(struct urtw_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);
	const uint8_t *macaddr;
	unsigned int i;
	uint8_t data8;
	usb_error_t error;

	error = FUNC7(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;

	/*
	 * initialize extra registers on 8187
	 */
	FUNC8(sc, URTW_BRSR_8187B, 0xfff);

	/* retry limit */
	FUNC5(sc, URTW_CW_CONF, &data8);
	data8 |= URTW_CW_CONF_PERPACKET_RETRY;
	FUNC10(sc, URTW_CW_CONF, data8);

	/* TX AGC */
	FUNC5(sc, URTW_TX_AGC_CTL, &data8);
	data8 |= URTW_TX_AGC_CTL_PERPACKET_GAIN;
	FUNC10(sc, URTW_TX_AGC_CTL, data8);

	/* Auto Rate Fallback Control */
#define	URTW_ARFR	0x1e0
	FUNC8(sc, URTW_ARFR, 0xfff);
	FUNC5(sc, URTW_RATE_FALLBACK, &data8);
	FUNC10(sc, URTW_RATE_FALLBACK,
	    data8 | URTW_RATE_FALLBACK_ENABLE);

	FUNC5(sc, URTW_MSR, &data8);
	FUNC10(sc, URTW_MSR, data8 & 0xf3);
	FUNC5(sc, URTW_MSR, &data8);
	FUNC10(sc, URTW_MSR, data8 | URTW_MSR_LINK_ENEDCA);
	FUNC10(sc, URTW_ACM_CONTROL, sc->sc_acmctl);

	FUNC8(sc, URTW_ATIM_WND, 2);
	FUNC8(sc, URTW_BEACON_INTERVAL, 100);
#define	URTW_FEMR_FOR_8187B	0x1d4
	FUNC8(sc, URTW_FEMR_FOR_8187B, 0xffff);

	/* led type */
	FUNC5(sc, URTW_CONFIG1, &data8);
	data8 = (data8 & 0x3f) | 0x80;
	FUNC10(sc, URTW_CONFIG1, data8);

	/* applying MAC address again.  */
	macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;
	error = FUNC6(sc, macaddr);
	if (error)
		goto fail;

	error = FUNC7(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

	FUNC10(sc, URTW_WPA_CONFIG, 0);

	/*
	 * MAC configuration
	 */
	for (i = 0; i < FUNC1(urtw_8225v2b_rf_part1); i++)
		FUNC10(sc, urtw_8225v2b_rf_part1[i].reg,
		    urtw_8225v2b_rf_part1[i].val);
	FUNC8(sc, URTW_TID_AC_MAP, 0xfa50);
	FUNC8(sc, URTW_INT_MIG, 0x0000);
	FUNC9(sc, 0x1f0, 0);
	FUNC9(sc, 0x1f4, 0);
	FUNC10(sc, 0x1f8, 0);
	FUNC9(sc, URTW_RF_TIMING, 0x4001);

#define	URTW_RFSW_CTRL	0x272
	FUNC8(sc, URTW_RFSW_CTRL, 0x569a);

	/*
	 * initialize PHY
	 */
	error = FUNC7(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;
	FUNC5(sc, URTW_CONFIG3, &data8);
	FUNC10(sc, URTW_CONFIG3,
	    data8 | URTW_CONFIG3_ANAPARAM_WRITE);

	error = FUNC7(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

	/* setup RFE initial timing */
	FUNC8(sc, URTW_RF_PINS_OUTPUT, 0x0480);
	FUNC8(sc, URTW_RF_PINS_SELECT, 0x2488);
	FUNC8(sc, URTW_RF_PINS_ENABLE, 0x1fff);
	FUNC11(&sc->sc_mtx, 1100);

	for (i = 0; i < FUNC1(urtw_8225v2b_rf_part0); i++) {
		FUNC4(sc, urtw_8225v2b_rf_part0[i].reg,
		    urtw_8225v2b_rf_part0[i].val);
		FUNC11(&sc->sc_mtx, 1);
	}
	FUNC4(sc, 0x00, 0x01b7);

	for (i = 0; i < 95; i++) {
		FUNC4(sc, URTW_8225_ADDR_1_MAGIC, (uint8_t)(i + 1));
		FUNC11(&sc->sc_mtx, 1);
		FUNC4(sc, URTW_8225_ADDR_2_MAGIC,
		    urtw_8225v2b_rxgain[i]);
		FUNC11(&sc->sc_mtx, 1);
	}

	FUNC4(sc, URTW_8225_ADDR_3_MAGIC, 0x080);
	FUNC11(&sc->sc_mtx, 1);
	FUNC4(sc, URTW_8225_ADDR_5_MAGIC, 0x004);
	FUNC11(&sc->sc_mtx, 1);
	FUNC4(sc, URTW_8225_ADDR_0_MAGIC, 0x0b7);
	FUNC11(&sc->sc_mtx, 1);
	FUNC11(&sc->sc_mtx, 3000);
	FUNC4(sc, URTW_8225_ADDR_2_MAGIC, 0xc4d);
	FUNC11(&sc->sc_mtx, 2000);
	FUNC4(sc, URTW_8225_ADDR_2_MAGIC, 0x44d);
	FUNC11(&sc->sc_mtx, 1);
	FUNC4(sc, URTW_8225_ADDR_0_MAGIC, 0x2bf);
	FUNC11(&sc->sc_mtx, 1);

	FUNC10(sc, URTW_TX_GAIN_CCK, 0x03);
	FUNC10(sc, URTW_TX_GAIN_OFDM, 0x07);
	FUNC10(sc, URTW_TX_ANTENNA, 0x03);

	FUNC3(sc, 0x80, 0x12);
	for (i = 0; i < 128; i++) {
		uint32_t addr, data;

		data = (urtw_8225z2_agc[i] << 8) | 0x0000008f;
		addr = ((i + 0x80) << 8) | 0x0000008e;

		FUNC3(sc, data & 0x7f, (data >> 8) & 0xff);
		FUNC3(sc, addr & 0x7f, (addr >> 8) & 0xff);
		FUNC3(sc, 0x0e, 0x00);
	}
	FUNC3(sc, 0x80, 0x10);

	for (i = 0; i < FUNC1(urtw_8225v2b_rf_part2); i++)
		FUNC3(sc, i, urtw_8225v2b_rf_part2[i].val);

	FUNC9(sc, URTW_8187B_AC_VO, (7 << 12) | (3 << 8) | 0x1c);
	FUNC9(sc, URTW_8187B_AC_VI, (7 << 12) | (3 << 8) | 0x1c);
	FUNC9(sc, URTW_8187B_AC_BE, (7 << 12) | (3 << 8) | 0x1c);
	FUNC9(sc, URTW_8187B_AC_BK, (7 << 12) | (3 << 8) | 0x1c);

	FUNC3(sc, 0x97, 0x46);
	FUNC3(sc, 0xa4, 0xb6);
	FUNC3(sc, 0x85, 0xfc);
	FUNC2(sc, 0xc1, 0x88);

fail:
	return (error);
}