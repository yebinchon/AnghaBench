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
struct bwn_txgain {int tg_pad; int tg_pga; int tg_gm; int /*<<< orphan*/  tg_dac; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC6(struct bwn_mac *mac, struct bwn_txgain *tg)
{
	uint16_t pa;

	if (mac->mac_phy.rev < 2) {
		FUNC1(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, 0xf800,
		    (tg->tg_pad << 7) | (tg->tg_pga << 3) | tg->tg_gm);
		FUNC4(mac, tg->tg_dac);
		FUNC5(mac);
		return;
	}

	pa = FUNC3(mac);
	FUNC2(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL,
	    (tg->tg_pga << 8) | tg->tg_gm);
	FUNC1(mac, FUNC0(0xfb), 0x8000,
	    tg->tg_pad | (pa << 6));
	FUNC2(mac, FUNC0(0xfc), (tg->tg_pga << 8) | tg->tg_gm);
	FUNC1(mac, FUNC0(0xfd), 0x8000,
	    tg->tg_pad | (pa << 8));
	FUNC4(mac, tg->tg_dac);
	FUNC5(mac);
}