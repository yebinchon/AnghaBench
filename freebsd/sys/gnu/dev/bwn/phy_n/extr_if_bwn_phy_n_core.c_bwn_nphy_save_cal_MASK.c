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
typedef  int /*<<< orphan*/  uint16_t ;
struct bwn_phy_n_iq_comp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * txcal_coeffs_5G; int /*<<< orphan*/ * txcal_radio_regs_5G; struct bwn_phy_n_iq_comp rxcal_coeffs_5G; int /*<<< orphan*/ * txcal_coeffs_2G; int /*<<< orphan*/ * txcal_radio_regs_2G; struct bwn_phy_n_iq_comp rxcal_coeffs_2G; } ;
struct bwn_chanspec {int /*<<< orphan*/  channel_type; int /*<<< orphan*/  center_freq; } ;
struct bwn_phy_n {scalar_t__ hang_avoid; TYPE_1__ cal_cache; struct bwn_chanspec iqcal_chanspec_5G; struct bwn_chanspec iqcal_chanspec_2G; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 scalar_t__ BWN_BAND_2G ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int) ; 
 int R2057_TX0_LOFT_COARSE_I ; 
 int R2057_TX0_LOFT_COARSE_Q ; 
 int R2057_TX0_LOFT_FINE_I ; 
 int R2057_TX0_LOFT_FINE_Q ; 
 int R2057_TX1_LOFT_COARSE_I ; 
 int R2057_TX1_LOFT_COARSE_Q ; 
 int R2057_TX1_LOFT_FINE_I ; 
 int R2057_TX1_LOFT_FINE_Q ; 
 scalar_t__ FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,struct bwn_phy_n_iq_comp*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

	struct bwn_phy_n_iq_comp *rxcal_coeffs = NULL;
	uint16_t *txcal_radio_regs = NULL;
	struct bwn_chanspec *iqcal_chanspec;
	uint16_t *table = NULL;

	if (nphy->hang_avoid)
		FUNC6(mac, 1);

	if (FUNC2(mac) == BWN_BAND_2G) {
		rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_2G;
		txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_2G;
		iqcal_chanspec = &nphy->iqcal_chanspec_2G;
		table = nphy->cal_cache.txcal_coeffs_2G;
	} else {
		rxcal_coeffs = &nphy->cal_cache.rxcal_coeffs_5G;
		txcal_radio_regs = nphy->cal_cache.txcal_radio_regs_5G;
		iqcal_chanspec = &nphy->iqcal_chanspec_5G;
		table = nphy->cal_cache.txcal_coeffs_5G;
	}

	FUNC5(mac, false, rxcal_coeffs);
	/* TODO use some definitions */
	if (phy->rev >= 19) {
		/* TODO */
	} else if (phy->rev >= 7) {
		txcal_radio_regs[0] = FUNC1(mac,
						     R2057_TX0_LOFT_FINE_I);
		txcal_radio_regs[1] = FUNC1(mac,
						     R2057_TX0_LOFT_FINE_Q);
		txcal_radio_regs[4] = FUNC1(mac,
						     R2057_TX0_LOFT_COARSE_I);
		txcal_radio_regs[5] = FUNC1(mac,
						     R2057_TX0_LOFT_COARSE_Q);
		txcal_radio_regs[2] = FUNC1(mac,
						     R2057_TX1_LOFT_FINE_I);
		txcal_radio_regs[3] = FUNC1(mac,
						     R2057_TX1_LOFT_FINE_Q);
		txcal_radio_regs[6] = FUNC1(mac,
						     R2057_TX1_LOFT_COARSE_I);
		txcal_radio_regs[7] = FUNC1(mac,
						     R2057_TX1_LOFT_COARSE_Q);
	} else if (phy->rev >= 3) {
		txcal_radio_regs[0] = FUNC1(mac, 0x2021);
		txcal_radio_regs[1] = FUNC1(mac, 0x2022);
		txcal_radio_regs[2] = FUNC1(mac, 0x3021);
		txcal_radio_regs[3] = FUNC1(mac, 0x3022);
		txcal_radio_regs[4] = FUNC1(mac, 0x2023);
		txcal_radio_regs[5] = FUNC1(mac, 0x2024);
		txcal_radio_regs[6] = FUNC1(mac, 0x3023);
		txcal_radio_regs[7] = FUNC1(mac, 0x3024);
	} else {
		txcal_radio_regs[0] = FUNC1(mac, 0x8B);
		txcal_radio_regs[1] = FUNC1(mac, 0xBA);
		txcal_radio_regs[2] = FUNC1(mac, 0x8D);
		txcal_radio_regs[3] = FUNC1(mac, 0xBC);
	}
	iqcal_chanspec->center_freq = FUNC3(mac);
	iqcal_chanspec->channel_type = FUNC4(mac, NULL);
	FUNC7(mac, FUNC0(15, 80), 8, table);

	if (nphy->hang_avoid)
		FUNC6(mac, 0);
}