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
typedef  int u_int ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_phy_lp {int plp_div; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;
struct bwn_b206x_chan {scalar_t__ bc_chan; int* bc_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_ALP ; 
 int /*<<< orphan*/  BWN_B2062_N_LGENACTL5 ; 
 int /*<<< orphan*/  BWN_B2062_N_LGENACTL6 ; 
 int /*<<< orphan*/  BWN_B2062_N_LGENATUNE0 ; 
 int /*<<< orphan*/  BWN_B2062_N_LGENATUNE2 ; 
 int /*<<< orphan*/  BWN_B2062_N_LGENATUNE3 ; 
 int /*<<< orphan*/  BWN_B2062_N_TX_PAD ; 
 int /*<<< orphan*/  BWN_B2062_N_TX_PGA ; 
 int /*<<< orphan*/  BWN_B2062_N_TX_TUNE ; 
 int /*<<< orphan*/  BWN_B2062_S_LGENG_CTL1 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL14 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL19 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL23 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL24 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL26 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL27 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL28 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL29 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL3 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL33 ; 
 int /*<<< orphan*/  BWN_B2062_S_RFPLLCTL34 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC4 (struct bwn_b206x_chan*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct bwn_b206x_chan* bwn_b2062_chantable ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct bwn_mac *mac, uint8_t chan)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	const struct bwn_b206x_chan *bc = NULL;
	uint32_t tmp[9];
	u_int freqxtal;
	int error, i;

	for (i = 0; i < FUNC4(bwn_b2062_chantable); i++) {
		if (bwn_b2062_chantable[i].bc_chan == chan) {
			bc = &bwn_b2062_chantable[i];
			break;
		}
	}

	if (bc == NULL)
		return (EINVAL);

	error = FUNC5(sc->sc_dev, BHND_CLOCK_ALP, &freqxtal);
	if (error) {
		FUNC8(sc->sc_dev, "failed to fetch clock frequency: %d",
		    error);
		return (error);
	}

	FUNC2(mac, BWN_B2062_S_RFPLLCTL14, 0x04);
	FUNC3(mac, BWN_B2062_N_LGENATUNE0, bc->bc_data[0]);
	FUNC3(mac, BWN_B2062_N_LGENATUNE2, bc->bc_data[1]);
	FUNC3(mac, BWN_B2062_N_LGENATUNE3, bc->bc_data[2]);
	FUNC3(mac, BWN_B2062_N_TX_TUNE, bc->bc_data[3]);
	FUNC3(mac, BWN_B2062_S_LGENG_CTL1, bc->bc_data[4]);
	FUNC3(mac, BWN_B2062_N_LGENACTL5, bc->bc_data[5]);
	FUNC3(mac, BWN_B2062_N_LGENACTL6, bc->bc_data[6]);
	FUNC3(mac, BWN_B2062_N_TX_PGA, bc->bc_data[7]);
	FUNC3(mac, BWN_B2062_N_TX_PAD, bc->bc_data[8]);

	FUNC3(mac, BWN_B2062_S_RFPLLCTL33, 0xcc);
	FUNC3(mac, BWN_B2062_S_RFPLLCTL34, 0x07);
	FUNC6(mac);
	tmp[0] = freqxtal / 1000;
	tmp[1] = plp->plp_div * 1000;
	tmp[2] = tmp[1] * FUNC9(chan, 0);
	if (FUNC9(chan, 0) < 4000)
		tmp[2] *= 2;
	tmp[3] = 48 * tmp[0];
	tmp[5] = tmp[2] / tmp[3];
	tmp[6] = tmp[2] % tmp[3];
	FUNC3(mac, BWN_B2062_S_RFPLLCTL26, tmp[5]);
	tmp[4] = tmp[6] * 0x100;
	tmp[5] = tmp[4] / tmp[3];
	tmp[6] = tmp[4] % tmp[3];
	FUNC3(mac, BWN_B2062_S_RFPLLCTL27, tmp[5]);
	tmp[4] = tmp[6] * 0x100;
	tmp[5] = tmp[4] / tmp[3];
	tmp[6] = tmp[4] % tmp[3];
	FUNC3(mac, BWN_B2062_S_RFPLLCTL28, tmp[5]);
	tmp[4] = tmp[6] * 0x100;
	tmp[5] = tmp[4] / tmp[3];
	tmp[6] = tmp[4] % tmp[3];
	FUNC3(mac, BWN_B2062_S_RFPLLCTL29,
	    tmp[5] + ((2 * tmp[6]) / tmp[3]));
	tmp[7] = FUNC1(mac, BWN_B2062_S_RFPLLCTL19);
	tmp[8] = ((2 * tmp[2] * (tmp[7] + 1)) + (3 * tmp[0])) / (6 * tmp[0]);
	FUNC3(mac, BWN_B2062_S_RFPLLCTL23, (tmp[8] >> 8) + 16);
	FUNC3(mac, BWN_B2062_S_RFPLLCTL24, tmp[8] & 0xff);

	FUNC7(mac);
	if (FUNC1(mac, BWN_B2062_S_RFPLLCTL3) & 0x10) {
		FUNC3(mac, BWN_B2062_S_RFPLLCTL33, 0xfc);
		FUNC3(mac, BWN_B2062_S_RFPLLCTL34, 0);
		FUNC6(mac);
		FUNC7(mac);
		if (FUNC1(mac, BWN_B2062_S_RFPLLCTL3) & 0x10) {
			FUNC0(mac, BWN_B2062_S_RFPLLCTL14, ~0x04);
			return (EIO);
		}
	}
	FUNC0(mac, BWN_B2062_S_RFPLLCTL14, ~0x04);
	return (0);
}