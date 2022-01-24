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
struct bwn_txgain {int dummy; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy_lp_iq_est {int ie_ipwr; int ie_qpwr; } ;
struct bwn_phy_lp {int plp_txpctlmode; int plp_rccap; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_phy; } ;
typedef  int /*<<< orphan*/  ie ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_B2062_N_RXBB_CALIB2 ; 
 int BWN_PHYLP_TXPCTL_OFF ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVR ; 
 int /*<<< orphan*/  BWN_PHY_AFE_CTL_OVRVAL ; 
 int /*<<< orphan*/  BWN_PHY_LP_PHY_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_PHY_PS_CTL_OVERRIDE_VAL0 ; 
 int /*<<< orphan*/  BWN_PHY_PS_CTL_OVERRIDE_VAL1 ; 
 int /*<<< orphan*/  BWN_PHY_PS_CTL_OVERRIDE_VAL2 ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_2_VAL ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC8 (struct bwn_mac*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct bwn_mac*) ; 
 struct bwn_txgain FUNC10 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct bwn_mac*) ; 
 int FUNC12 (struct bwn_mac*) ; 
 int FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bwn_mac*,int,int,struct bwn_phy_lp_iq_est*) ; 
 int /*<<< orphan*/  FUNC15 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC18 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct bwn_mac*,struct bwn_txgain*) ; 
 int /*<<< orphan*/  FUNC21 (struct bwn_mac*,int) ; 
 int FUNC22 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct bwn_phy_lp_iq_est*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC25(struct bwn_mac *mac)
{
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_phy_lp_iq_est ie;
	struct bwn_txgain tx_gains;
	static const uint32_t pwrtbl[21] = {
		0x10000, 0x10557, 0x10e2d, 0x113e0, 0x10f22, 0x0ff64,
		0x0eda2, 0x0e5d4, 0x0efd1, 0x0fbe8, 0x0b7b8, 0x04b35,
		0x01a5e, 0x00a0b, 0x00444, 0x001fd, 0x000ff, 0x00088,
		0x0004c, 0x0002c, 0x0001a,
	};
	uint32_t npwr, ipwr, sqpwr, tmp;
	int loopback, i, j, sum, error;
	uint16_t save[7];
	uint8_t txo, bbmult, txpctlmode;

	error = FUNC22(mac, 7);
	if (error)
		FUNC23(sc->sc_dev,
		    "failed to change channel to 7 (%d)\n", error);
	txo = (FUNC1(mac, BWN_PHY_AFE_CTL_OVR) & 0x40) ? 1 : 0;
	bbmult = FUNC9(mac);
	if (txo)
		tx_gains = FUNC10(mac);

	save[0] = FUNC1(mac, BWN_PHY_RF_OVERRIDE_0);
	save[1] = FUNC1(mac, BWN_PHY_RF_OVERRIDE_VAL_0);
	save[2] = FUNC1(mac, BWN_PHY_AFE_CTL_OVR);
	save[3] = FUNC1(mac, BWN_PHY_AFE_CTL_OVRVAL);
	save[4] = FUNC1(mac, BWN_PHY_RF_OVERRIDE_2);
	save[5] = FUNC1(mac, BWN_PHY_RF_OVERRIDE_2_VAL);
	save[6] = FUNC1(mac, BWN_PHY_LP_PHY_CTL);

	FUNC11(mac);
	txpctlmode = plp->plp_txpctlmode;
	FUNC21(mac, BWN_PHYLP_TXPCTL_OFF);

	/* disable CRS */
	FUNC16(mac, 1);
	FUNC19(mac, 0, 1);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfffb);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_0, 0x4);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfff7);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_0, 0x8);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x10);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_0, 0x10);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xffdf);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_0, 0x20);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xffbf);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_0, 0x40);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0x7);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0x38);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xff3f);
	FUNC2(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0x100);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xfdff);
	FUNC4(mac, BWN_PHY_PS_CTL_OVERRIDE_VAL0, 0);
	FUNC4(mac, BWN_PHY_PS_CTL_OVERRIDE_VAL1, 1);
	FUNC4(mac, BWN_PHY_PS_CTL_OVERRIDE_VAL2, 0x20);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xfbff);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xf7ff);
	FUNC4(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, 0);
	FUNC4(mac, BWN_PHY_RX_GAIN_CTL_OVERRIDE_VAL, 0x45af);
	FUNC4(mac, BWN_PHY_RF_OVERRIDE_2, 0x3ff);

	loopback = FUNC12(mac);
	if (loopback == -1)
		goto done;
	FUNC18(mac, loopback);
	FUNC3(mac, BWN_PHY_LP_PHY_CTL, 0xffbf, 0x40);
	FUNC3(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xfff8, 0x1);
	FUNC3(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xffc7, 0x8);
	FUNC3(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xff3f, 0xc0);

	tmp = 0;
	FUNC24(&ie, 0, sizeof(ie));
	for (i = 128; i <= 159; i++) {
		FUNC5(mac, BWN_B2062_N_RXBB_CALIB2, i);
		sum = 0;
		for (j = 5; j <= 25; j++) {
			FUNC8(mac, 1, 1, j, j, 0);
			if (!(FUNC14(mac, 1000, 32, &ie)))
				goto done;
			sqpwr = ie.ie_ipwr + ie.ie_qpwr;
			ipwr = ((pwrtbl[j - 5] >> 3) + 1) >> 1;
			npwr = FUNC13(sqpwr, (j == 5) ? sqpwr : 0,
			    12);
			sum += ((ipwr - npwr) * (ipwr - npwr));
			if ((i == 128) || (sum < tmp)) {
				plp->plp_rccap = i;
				tmp = sum;
			}
		}
	}
	FUNC7(mac);
done:
	/* restore CRS */
	FUNC6(mac, 1);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0xff80);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_2, 0xfc00);

	FUNC4(mac, BWN_PHY_RF_OVERRIDE_VAL_0, save[1]);
	FUNC4(mac, BWN_PHY_RF_OVERRIDE_0, save[0]);
	FUNC4(mac, BWN_PHY_AFE_CTL_OVRVAL, save[3]);
	FUNC4(mac, BWN_PHY_AFE_CTL_OVR, save[2]);
	FUNC4(mac, BWN_PHY_RF_OVERRIDE_2_VAL, save[5]);
	FUNC4(mac, BWN_PHY_RF_OVERRIDE_2, save[4]);
	FUNC4(mac, BWN_PHY_LP_PHY_CTL, save[6]);

	FUNC15(mac, bbmult);
	if (txo)
		FUNC20(mac, &tx_gains);
	FUNC21(mac, txpctlmode);
	if (plp->plp_rccap)
		FUNC17(mac);

	return (0);
}