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
typedef  int uint16_t ;
struct bwn_phy_n {int txrx_chain; } ;
struct TYPE_2__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_RFSEQCA ; 
 int BWN_NPHY_RFSEQCA_RXEN ; 
 int BWN_NPHY_RFSEQCA_TXEN ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQMODE ; 
 int /*<<< orphan*/  BWN_NPHY_RFSEQMODE_CAOVER ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct bwn_mac *mac)
{
	struct bwn_phy_n *nphy = mac->mac_phy.phy_n;

	bool override = false;
	uint16_t chain = 0x33;

	if (nphy->txrx_chain == 0) {
		chain = 0x11;
		override = true;
	} else if (nphy->txrx_chain == 1) {
		chain = 0x22;
		override = true;
	}

	FUNC2(mac, BWN_NPHY_RFSEQCA,
			~(BWN_NPHY_RFSEQCA_TXEN | BWN_NPHY_RFSEQCA_RXEN),
			chain);

	if (override)
		FUNC1(mac, BWN_NPHY_RFSEQMODE,
				BWN_NPHY_RFSEQMODE_CAOVER);
	else
		FUNC0(mac, BWN_NPHY_RFSEQMODE,
				~BWN_NPHY_RFSEQMODE_CAOVER);
}