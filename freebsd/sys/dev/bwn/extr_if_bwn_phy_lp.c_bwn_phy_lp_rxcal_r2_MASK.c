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
typedef  int u_int ;
struct bwn_wpair {int member_1; int value; int /*<<< orphan*/  const reg; int /*<<< orphan*/  const member_0; } ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_ALP ; 
 int /*<<< orphan*/  const BWN_B2063_PA_SP7 ; 
 int /*<<< orphan*/  BWN_B2063_PLL_SP1 ; 
#define  BWN_B2063_RC_CALIB_CTL1 134 
#define  BWN_B2063_RC_CALIB_CTL2 133 
#define  BWN_B2063_RC_CALIB_CTL3 132 
#define  BWN_B2063_RC_CALIB_CTL4 131 
#define  BWN_B2063_RC_CALIB_CTL5 130 
 int /*<<< orphan*/  const BWN_B2063_RC_CALIB_CTL6 ; 
#define  BWN_B2063_RX_BB_SP8 129 
#define  BWN_B2063_TX_BB_SP3 128 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct bwn_wpair const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	static const struct bwn_wpair v1[] = {
		{ BWN_B2063_RX_BB_SP8, 0x0 },
		{ BWN_B2063_RC_CALIB_CTL1, 0x7e },
		{ BWN_B2063_RC_CALIB_CTL1, 0x7c },
		{ BWN_B2063_RC_CALIB_CTL2, 0x15 },
		{ BWN_B2063_RC_CALIB_CTL3, 0x70 },
		{ BWN_B2063_RC_CALIB_CTL4, 0x52 },
		{ BWN_B2063_RC_CALIB_CTL5, 0x1 },
		{ BWN_B2063_RC_CALIB_CTL1, 0x7d }
	};
	static const struct bwn_wpair v2[] = {
		{ BWN_B2063_TX_BB_SP3, 0x0 },
		{ BWN_B2063_RC_CALIB_CTL1, 0x7e },
		{ BWN_B2063_RC_CALIB_CTL1, 0x7c },
		{ BWN_B2063_RC_CALIB_CTL2, 0x55 },
		{ BWN_B2063_RC_CALIB_CTL3, 0x76 }
	};
	u_int freqxtal;
	int error, i;
	uint8_t tmp;

	error = FUNC5(sc->sc_dev, BHND_CLOCK_ALP, &freqxtal);
	if (error) {
		FUNC6(sc->sc_dev, "failed to fetch clock frequency: %d",
		    error);
		return (error);
	}

	tmp = FUNC1(mac, BWN_B2063_RX_BB_SP8) & 0xff;

	for (i = 0; i < 2; i++)
		FUNC2(mac, v1[i].reg, v1[i].value);
	FUNC0(mac, BWN_B2063_PLL_SP1, 0xf7);
	for (i = 2; i < FUNC4(v1); i++)
		FUNC2(mac, v1[i].reg, v1[i].value);
	for (i = 0; i < 10000; i++) {
		if (FUNC1(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2)
			break;
		FUNC3(1000);
	}

	if (!(FUNC1(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2))
		FUNC2(mac, BWN_B2063_RX_BB_SP8, tmp);

	tmp = FUNC1(mac, BWN_B2063_TX_BB_SP3) & 0xff;

	for (i = 0; i < FUNC4(v2); i++)
		FUNC2(mac, v2[i].reg, v2[i].value);
	if (freqxtal == 24000000) {
		FUNC2(mac, BWN_B2063_RC_CALIB_CTL4, 0xfc);
		FUNC2(mac, BWN_B2063_RC_CALIB_CTL5, 0x0);
	} else {
		FUNC2(mac, BWN_B2063_RC_CALIB_CTL4, 0x13);
		FUNC2(mac, BWN_B2063_RC_CALIB_CTL5, 0x1);
	}
	FUNC2(mac, BWN_B2063_PA_SP7, 0x7d);
	for (i = 0; i < 10000; i++) {
		if (FUNC1(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2)
			break;
		FUNC3(1000);
	}
	if (!(FUNC1(mac, BWN_B2063_RC_CALIB_CTL6) & 0x2))
		FUNC2(mac, BWN_B2063_TX_BB_SP3, tmp);
	FUNC2(mac, BWN_B2063_RC_CALIB_CTL1, 0x7e);

	return (0);
}