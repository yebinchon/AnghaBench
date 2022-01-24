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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_int ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;
struct bwn_b206x_chan {scalar_t__ bc_chan; int* bc_data; int bc_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_ALP ; 
 int /*<<< orphan*/  BWN_B2063_A_RX_1ST3 ; 
 int /*<<< orphan*/  BWN_B2063_A_RX_2ND1 ; 
 int /*<<< orphan*/  BWN_B2063_A_RX_2ND4 ; 
 int /*<<< orphan*/  BWN_B2063_A_RX_2ND7 ; 
 int /*<<< orphan*/  BWN_B2063_A_RX_PS6 ; 
 int /*<<< orphan*/  BWN_B2063_COM15 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_CALNRST ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_CP2 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_CP3 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_LF1 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_LF2 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_LF3 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_LF4 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_SG1 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_SG2 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_SG3 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_SG4 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO1 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO_CALIB3 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO_CALIB5 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO_CALIB6 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO_CALIB7 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_VCO_CALIB8 ; 
 int /*<<< orphan*/  BWN_B2063_JTAG_XTAL_12 ; 
 int /*<<< orphan*/  BWN_B2063_LOGEN_BUF2 ; 
 int /*<<< orphan*/  BWN_B2063_LOGEN_MIXER2 ; 
 int /*<<< orphan*/  BWN_B2063_LOGEN_RCCR1 ; 
 int /*<<< orphan*/  BWN_B2063_LOGEN_VCOBUF1 ; 
 int /*<<< orphan*/  BWN_B2063_PA_CTL11 ; 
 int /*<<< orphan*/  BWN_B2063_PLL_SP1 ; 
 int /*<<< orphan*/  BWN_B2063_PLL_SP2 ; 
 int /*<<< orphan*/  BWN_B2063_TX_RF_CTL2 ; 
 int /*<<< orphan*/  BWN_B2063_TX_RF_CTL5 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int EINVAL ; 
 int FUNC6 (struct bwn_b206x_chan*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct bwn_b206x_chan* bwn_b2063_chantable ; 
 int FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static int
FUNC11(struct bwn_mac *mac, uint8_t chan)
{
	static const struct bwn_b206x_chan *bc = NULL;
	struct bwn_softc *sc = mac->mac_sc;
	uint32_t count, freqref, freqvco, val[3], timeout, timeoutref,
	    tmp[6];
	uint16_t old, scale, tmp16;
	u_int freqxtal;
	int error, i, div;

	for (i = 0; i < FUNC6(bwn_b2063_chantable); i++) {
		if (bwn_b2063_chantable[i].bc_chan == chan) {
			bc = &bwn_b2063_chantable[i];
			break;
		}
	}
	if (bc == NULL)
		return (EINVAL);

	error = FUNC7(sc->sc_dev, BHND_CLOCK_ALP, &freqxtal);
	if (error) {
		FUNC9(sc->sc_dev, "failed to fetch clock frequency: %d",
		    error);
		return (error);
	}

	FUNC4(mac, BWN_B2063_LOGEN_VCOBUF1, bc->bc_data[0]);
	FUNC4(mac, BWN_B2063_LOGEN_MIXER2, bc->bc_data[1]);
	FUNC4(mac, BWN_B2063_LOGEN_BUF2, bc->bc_data[2]);
	FUNC4(mac, BWN_B2063_LOGEN_RCCR1, bc->bc_data[3]);
	FUNC4(mac, BWN_B2063_A_RX_1ST3, bc->bc_data[4]);
	FUNC4(mac, BWN_B2063_A_RX_2ND1, bc->bc_data[5]);
	FUNC4(mac, BWN_B2063_A_RX_2ND4, bc->bc_data[6]);
	FUNC4(mac, BWN_B2063_A_RX_2ND7, bc->bc_data[7]);
	FUNC4(mac, BWN_B2063_A_RX_PS6, bc->bc_data[8]);
	FUNC4(mac, BWN_B2063_TX_RF_CTL2, bc->bc_data[9]);
	FUNC4(mac, BWN_B2063_TX_RF_CTL5, bc->bc_data[10]);
	FUNC4(mac, BWN_B2063_PA_CTL11, bc->bc_data[11]);

	old = FUNC1(mac, BWN_B2063_COM15);
	FUNC2(mac, BWN_B2063_COM15, 0x1e);

	freqvco = bc->bc_freq << ((bc->bc_freq > 4000) ? 1 : 2);
	freqref = freqxtal * 3;
	div = (freqxtal <= 26000000 ? 1 : 2);
	timeout = ((((8 * freqxtal) / (div * 5000000)) + 1) >> 1) - 1;
	timeoutref = ((((8 * freqxtal) / (div * (timeout + 1))) +
		999999) / 1000000) + 1;

	FUNC4(mac, BWN_B2063_JTAG_VCO_CALIB3, 0x2);
	FUNC3(mac, BWN_B2063_JTAG_VCO_CALIB6,
	    0xfff8, timeout >> 2);
	FUNC3(mac, BWN_B2063_JTAG_VCO_CALIB7,
	    0xff9f,timeout << 5);
	FUNC4(mac, BWN_B2063_JTAG_VCO_CALIB5, timeoutref);

	val[0] = FUNC8(freqxtal, 1000000, 16);
	val[1] = FUNC8(freqxtal, 1000000 * div, 16);
	val[2] = FUNC8(freqvco, 3, 16);

	count = (FUNC8(val[2], val[1] + 16, 16) * (timeout + 1) *
	    (timeoutref + 1)) - 1;
	FUNC3(mac, BWN_B2063_JTAG_VCO_CALIB7,
	    0xf0, count >> 8);
	FUNC4(mac, BWN_B2063_JTAG_VCO_CALIB8, count & 0xff);

	tmp[0] = ((val[2] * 62500) / freqref) << 4;
	tmp[1] = ((val[2] * 62500) % freqref) << 4;
	while (tmp[1] >= freqref) {
		tmp[0]++;
		tmp[1] -= freqref;
	}
	FUNC3(mac, BWN_B2063_JTAG_SG1, 0xffe0, tmp[0] >> 4);
	FUNC3(mac, BWN_B2063_JTAG_SG2, 0xfe0f, tmp[0] << 4);
	FUNC3(mac, BWN_B2063_JTAG_SG2, 0xfff0, tmp[0] >> 16);
	FUNC4(mac, BWN_B2063_JTAG_SG3, (tmp[1] >> 8) & 0xff);
	FUNC4(mac, BWN_B2063_JTAG_SG4, tmp[1] & 0xff);

	FUNC4(mac, BWN_B2063_JTAG_LF1, 0xb9);
	FUNC4(mac, BWN_B2063_JTAG_LF2, 0x88);
	FUNC4(mac, BWN_B2063_JTAG_LF3, 0x28);
	FUNC4(mac, BWN_B2063_JTAG_LF4, 0x63);

	tmp[2] = ((41 * (val[2] - 3000)) /1200) + 27;
	tmp[3] = FUNC8(132000 * tmp[0], 8451, 16);

	if (FUNC10(tmp[3], tmp[2]) > 60) {
		scale = 1;
		tmp[4] = ((tmp[3] + tmp[2]) / (tmp[2] << 1)) - 8;
	} else {
		scale = 0;
		tmp[4] = ((tmp[3] + (tmp[2] >> 1)) / tmp[2]) - 8;
	}
	FUNC3(mac, BWN_B2063_JTAG_CP2, 0xffc0, tmp[4]);
	FUNC3(mac, BWN_B2063_JTAG_CP2, 0xffbf, scale << 6);

	tmp[5] = FUNC8(100 * val[0], val[2], 16) * (tmp[4] * 8) *
	    (scale + 1);
	if (tmp[5] > 150)
		tmp[5] = 0;

	FUNC3(mac, BWN_B2063_JTAG_CP3, 0xffe0, tmp[5]);
	FUNC3(mac, BWN_B2063_JTAG_CP3, 0xffdf, scale << 5);

	FUNC3(mac, BWN_B2063_JTAG_XTAL_12, 0xfffb, 0x4);
	if (freqxtal > 26000000)
		FUNC2(mac, BWN_B2063_JTAG_XTAL_12, 0x2);
	else
		FUNC0(mac, BWN_B2063_JTAG_XTAL_12, 0xfd);

	if (val[0] == 45)
		FUNC2(mac, BWN_B2063_JTAG_VCO1, 0x2);
	else
		FUNC0(mac, BWN_B2063_JTAG_VCO1, 0xfd);

	FUNC2(mac, BWN_B2063_PLL_SP2, 0x3);
	FUNC5(1);
	FUNC0(mac, BWN_B2063_PLL_SP2, 0xfffc);

	/* VCO Calibration */
	FUNC0(mac, BWN_B2063_PLL_SP1, ~0x40);
	tmp16 = FUNC1(mac, BWN_B2063_JTAG_CALNRST) & 0xf8;
	FUNC4(mac, BWN_B2063_JTAG_CALNRST, tmp16);
	FUNC5(1);
	FUNC4(mac, BWN_B2063_JTAG_CALNRST, tmp16 | 0x4);
	FUNC5(1);
	FUNC4(mac, BWN_B2063_JTAG_CALNRST, tmp16 | 0x6);
	FUNC5(1);
	FUNC4(mac, BWN_B2063_JTAG_CALNRST, tmp16 | 0x7);
	FUNC5(300);
	FUNC2(mac, BWN_B2063_PLL_SP1, 0x40);

	FUNC4(mac, BWN_B2063_COM15, old);
	return (0);
}