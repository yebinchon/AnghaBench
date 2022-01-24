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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwn_txgain {int tg_pad; int tg_gm; int tg_pga; int tg_dac; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy_lp {scalar_t__ plp_txpctlmode; int plp_txpwridx; int plp_tssinpt; int plp_tssiidx; int /*<<< orphan*/  plp_antenna; scalar_t__ plp_rccap; int /*<<< orphan*/  plp_chan; } ;
struct TYPE_2__ {int rev; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_CHANNEL ; 
 scalar_t__ BWN_PHYLP_TXPCTL_OFF ; 
 scalar_t__ BWN_PHYLP_TXPCTL_ON_SW ; 
 int /*<<< orphan*/  BWN_PHY_RF_PWR_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*,struct bwn_txgain*) ; 
 int /*<<< orphan*/  FUNC12 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bwn_mac*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*) ; 
 int FUNC18 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct bwn_mac*,int /*<<< orphan*/ ,unsigned int const,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*,int /*<<< orphan*/ ,unsigned int const,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC25(struct bwn_mac *mac)
{
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	struct bwn_softc *sc = mac->mac_sc;
	const unsigned int size = 256;
	struct bwn_txgain tg;
	uint32_t rxcomp, txgain, coeff, rfpwr, *tabs;
	uint16_t tssinpt, tssiidx, value[2];
	uint8_t mode;
	int8_t txpwridx;

	tabs = (uint32_t *)FUNC24(sizeof(uint32_t) * size, M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (tabs == NULL) {
		FUNC22(sc->sc_dev, "failed to allocate buffer.\n");
		return;
	}

	FUNC5(mac);
	mode = plp->plp_txpctlmode;
	txpwridx = plp->plp_txpwridx;
	tssinpt = plp->plp_tssinpt;
	tssiidx = plp->plp_tssiidx;

	FUNC19(mac,
	    (mac->mac_phy.rev < 2) ? FUNC2(10, 0x140) :
	    FUNC2(7, 0x140), size, tabs);

	FUNC16(mac);
	FUNC4(mac);
	FUNC17(mac);
	FUNC6(mac, 1);
	FUNC15(mac, BWN_PHYLP_TXPCTL_OFF);

	FUNC21(mac,
	    (mac->mac_phy.rev < 2) ? FUNC2(10, 0x140) :
	    FUNC2(7, 0x140), size, tabs);

	FUNC3(mac, BWN_CHANNEL, plp->plp_chan);
	plp->plp_tssinpt = tssinpt;
	plp->plp_tssiidx = tssiidx;
	FUNC7(mac, plp->plp_chan);
	if (txpwridx != -1) {
		/* set TX power by index */
		plp->plp_txpwridx = txpwridx;
		FUNC5(mac);
		if (plp->plp_txpctlmode != BWN_PHYLP_TXPCTL_OFF)
			FUNC15(mac, BWN_PHYLP_TXPCTL_ON_SW);
		if (mac->mac_phy.rev >= 2) {
			rxcomp = FUNC18(mac,
			    FUNC2(7, txpwridx + 320));
			txgain = FUNC18(mac,
			    FUNC2(7, txpwridx + 192));
			tg.tg_pad = (txgain >> 16) & 0xff;
			tg.tg_gm = txgain & 0xff;
			tg.tg_pga = (txgain >> 8) & 0xff;
			tg.tg_dac = (rxcomp >> 28) & 0xff;
			FUNC11(mac, &tg);
		} else {
			rxcomp = FUNC18(mac,
			    FUNC2(10, txpwridx + 320));
			txgain = FUNC18(mac,
			    FUNC2(10, txpwridx + 192));
			FUNC0(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL,
			    0xf800, (txgain >> 4) & 0x7fff);
			FUNC12(mac, txgain & 0x7);
			FUNC14(mac, (txgain >> 24) & 0x7f);
		}
		FUNC9(mac, (rxcomp >> 20) & 0xff);

		/* set TX IQCC */
		value[0] = (rxcomp >> 10) & 0x3ff;
		value[1] = rxcomp & 0x3ff;
		FUNC21(mac, FUNC1(0, 80), 2, value);

		coeff = FUNC18(mac,
		    (mac->mac_phy.rev >= 2) ? FUNC2(7, txpwridx + 448) :
		    FUNC2(10, txpwridx + 448));
		FUNC20(mac, FUNC1(0, 85), coeff & 0xffff);
		if (mac->mac_phy.rev >= 2) {
			rfpwr = FUNC18(mac,
			    FUNC2(7, txpwridx + 576));
			FUNC0(mac, BWN_PHY_RF_PWR_OVERRIDE, 0xff00,
			    rfpwr & 0xffff);
		}
		FUNC13(mac);
	}
	if (plp->plp_rccap)
		FUNC10(mac);
	FUNC8(mac, plp->plp_antenna);
	FUNC15(mac, mode);
	FUNC23(tabs, M_DEVBUF);
}