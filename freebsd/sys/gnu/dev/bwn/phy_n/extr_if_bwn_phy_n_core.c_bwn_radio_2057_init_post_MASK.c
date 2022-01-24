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
struct TYPE_2__ {scalar_t__ phy_do_full_init; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  R2057_RFPLL_MASTER ; 
 int /*<<< orphan*/  R2057_RFPLL_MISC_CAL_RESETN ; 
 int /*<<< orphan*/  R2057_XTALPUOVR_PINCTRL ; 
 int /*<<< orphan*/  R2057_XTAL_CONFIG2 ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 

__attribute__((used)) static void FUNC5(struct bwn_mac *mac)
{
	FUNC1(mac, R2057_XTALPUOVR_PINCTRL, 0x1);

	if (0) /* FIXME: Is this BCM43217 specific? */
		FUNC1(mac, R2057_XTALPUOVR_PINCTRL, 0x2);

	FUNC1(mac, R2057_RFPLL_MISC_CAL_RESETN, 0x78);
	FUNC1(mac, R2057_XTAL_CONFIG2, 0x80);
	FUNC2(2000);
	FUNC0(mac, R2057_RFPLL_MISC_CAL_RESETN, ~0x78);
	FUNC0(mac, R2057_XTAL_CONFIG2, ~0x80);

	if (mac->mac_phy.phy_do_full_init) {
		FUNC3(mac);
		FUNC4(mac);
	}
	FUNC0(mac, R2057_RFPLL_MASTER, ~0x8);
}