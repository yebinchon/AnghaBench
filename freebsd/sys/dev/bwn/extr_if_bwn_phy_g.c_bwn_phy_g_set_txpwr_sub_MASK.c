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
typedef  int uint16_t ;
struct bwn_txpwr_loctl {int tx_bias; int tx_magn; } ;
struct bwn_rfatt {int att; } ;
struct TYPE_2__ {int padmix; } ;
struct bwn_phy_g {int pg_txctl; TYPE_1__ pg_bbatt; TYPE_1__ pg_rfatt; struct bwn_txpwr_loctl pg_loctl; } ;
struct bwn_phy {int rf_ver; int rf_rev; struct bwn_phy_g phy_g; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;
struct bwn_bbatt {int att; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bwn_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  BWN_SHARED ; 
 int /*<<< orphan*/  BWN_SHARED_RADIO_ATT ; 
 int BWN_TXCTL_TXMIX ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct bwn_rfatt const*,int) ; 

__attribute__((used)) static void
FUNC7(struct bwn_mac *mac, const struct bwn_bbatt *bbatt,
    const struct bwn_rfatt *rfatt, uint8_t txctl)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_g *pg = &phy->phy_g;
	struct bwn_txpwr_loctl *lo = &pg->pg_loctl;
	uint16_t bb, rf;
	uint16_t tx_bias, tx_magn;

	bb = bbatt->att;
	rf = rfatt->att;
	tx_bias = lo->tx_bias;
	tx_magn = lo->tx_magn;
	if (tx_bias == 0xff)
		tx_bias = 0;

	pg->pg_txctl = txctl;
	FUNC6(&pg->pg_rfatt, rfatt, sizeof(*rfatt));
	pg->pg_rfatt.padmix = (txctl & BWN_TXCTL_TXMIX) ? 1 : 0;
	FUNC6(&pg->pg_bbatt, bbatt, sizeof(*bbatt));
	FUNC4(mac, bb);
	FUNC5(mac, BWN_SHARED, BWN_SHARED_RADIO_ATT, rf);
	if (phy->rf_ver == 0x2050 && phy->rf_rev == 8)
		FUNC2(mac, 0x43, (rf & 0x000f) | (txctl & 0x0070));
	else {
		FUNC1(mac, 0x43, 0xfff0, (rf & 0x000f));
		FUNC1(mac, 0x52, ~0x0070, (txctl & 0x0070));
	}
	if (FUNC0(phy))
		FUNC2(mac, 0x52, tx_magn | tx_bias);
	else
		FUNC1(mac, 0x52, 0xfff0, (tx_bias & 0x000f));
	FUNC3(mac);
}