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
typedef  int uint16_t ;
struct bwn_txpwr_loctl {int tx_bias; int tx_magn; int /*<<< orphan*/  txctl_measured_time; } ;
struct bwn_phy_g {int pg_max_lb_gain; struct bwn_txpwr_loctl pg_loctl; } ;
struct bwn_phy {int rev; int rf_ver; int rf_rev; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_phy*) ; 
 scalar_t__ FUNC2 (struct bwn_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int FUNC4 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int const*) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (struct bwn_mac*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct bwn_mac*,int) ; 

__attribute__((used)) static void
FUNC14(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_txpwr_loctl *lo = &pg->pg_loctl;
	uint16_t reg, mask;
	uint16_t trsw_rx, pga;
	uint16_t rf_pctl_reg;

	static const uint8_t tx_bias_values[] = {
		0x09, 0x08, 0x0a, 0x01, 0x00,
		0x02, 0x05, 0x04, 0x06,
	};
	static const uint8_t tx_magn_values[] = {
		0x70, 0x40,
	};

	if (!FUNC1(phy)) {
		rf_pctl_reg = 6;
		trsw_rx = 2;
		pga = 0;
	} else {
		int lb_gain;

		trsw_rx = 0;
		lb_gain = pg->pg_max_lb_gain / 2;
		if (lb_gain > 10) {
			rf_pctl_reg = 0;
			pga = FUNC10(10 - lb_gain) / 6;
			pga = FUNC8(FUNC7(pga, 0), 15);
		} else {
			int cmp_val;
			int tmp;

			pga = 0;
			cmp_val = 0x24;
			if ((phy->rev >= 2) &&
			    (phy->rf_ver == 0x2050) && (phy->rf_rev == 8))
				cmp_val = 0x3c;
			tmp = lb_gain;
			if ((10 - lb_gain) < cmp_val)
				tmp = (10 - lb_gain);
			if (tmp < 0)
				tmp += 6;
			else
				tmp += 3;
			cmp_val /= 4;
			tmp /= 4;
			if (tmp >= cmp_val)
				rf_pctl_reg = cmp_val;
			else
				rf_pctl_reg = tmp;
		}
	}
	FUNC5(mac, 0x43, 0xfff0, rf_pctl_reg);
	FUNC13(mac, 2);

	reg = FUNC12(mac, &mask, NULL);
	mask = ~mask;
	FUNC3(mac, reg, mask);

	if (FUNC2(phy)) {
		int i, j;
		int feedthrough;
		int min_feedth = 0xffff;
		uint8_t tx_magn, tx_bias;

		for (i = 0; i < FUNC9(tx_magn_values); i++) {
			tx_magn = tx_magn_values[i];
			FUNC5(mac, 0x52, 0xff0f, tx_magn);
			for (j = 0; j < FUNC9(tx_bias_values); j++) {
				tx_bias = tx_bias_values[j];
				FUNC5(mac, 0x52, 0xfff0, tx_bias);
				feedthrough = FUNC11(mac, 0, pga,
				    trsw_rx);
				if (feedthrough < min_feedth) {
					lo->tx_bias = tx_bias;
					lo->tx_magn = tx_magn;
					min_feedth = feedthrough;
				}
				if (lo->tx_bias == 0)
					break;
			}
			FUNC6(mac, 0x52,
					  (FUNC4(mac, 0x52)
					   & 0xff00) | lo->tx_bias | lo->
					  tx_magn);
		}
	} else {
		lo->tx_magn = 0;
		lo->tx_bias = 0;
		FUNC3(mac, 0x52, 0xfff0);
	}

	FUNC0(lo->txctl_measured_time);
}