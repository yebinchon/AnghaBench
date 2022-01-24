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
struct bwn_phy_n {int phyrxchain; scalar_t__ hang_avoid; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_HPANT_SWTHRES ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQCA ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQCA_RXEN ; 
 int BWN_NPHY_RFSEQCA_RXEN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int) ; 

__attribute__((used)) static void FUNC6(struct bwn_mac *mac, uint8_t mask)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_phy_n *nphy = phy->phy_n;
	/* uint16_t buf[16]; it's rev3+ */

	nphy->phyrxchain = mask;

	if (0 /* FIXME clk */)
		return;

	FUNC3(mac);

	if (nphy->hang_avoid)
		FUNC5(mac, true);

	FUNC0(mac, BWN_NPHY_RFSEQCA, ~BWN_NPHY_RFSEQCA_RXEN,
			(mask & 0x3) << BWN_NPHY_RFSEQCA_RXEN_SHIFT);

	if ((mask & 0x3) != 0x3) {
		FUNC1(mac, BWN_NPHY_HPANT_SWTHRES, 1);
		if (mac->mac_phy.rev >= 3) {
			/* TODO */
		}
	} else {
		FUNC1(mac, BWN_NPHY_HPANT_SWTHRES, 0x1E);
		if (mac->mac_phy.rev >= 3) {
			/* TODO */
		}
	}

	FUNC4(mac, BWN_RFSEQ_RESET2RX);

	if (nphy->hang_avoid)
		FUNC5(mac, false);

	FUNC2(mac);
}