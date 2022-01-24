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
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_GPIO_CONTROL ; 
 int /*<<< orphan*/  BWN_GPIO_MASK ; 
 int /*<<< orphan*/  BWN_MACCTL ; 
 int /*<<< orphan*/  BWN_MACCTL_GPOUT_MASK ; 
 int /*<<< orphan*/  BWN_NPHY_GPIO_HIOEN ; 
 int /*<<< orphan*/  BWN_NPHY_GPIO_LOOEN ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_LUT_TRSW_LO1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_LUT_TRSW_LO2 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_LUT_TRSW_UP1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_LUT_TRSW_UP2 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct bwn_mac *mac, bool init)
{
	int error;

	if (mac->mac_phy.rev >= 7)
		return (0);

	if (mac->mac_phy.rev >= 3) {
		if (!init)
			return (0);
		if (0 /* FIXME */) {
			FUNC5(mac, FUNC0(9, 2), 0x211);
			FUNC5(mac, FUNC0(9, 3), 0x222);
			FUNC5(mac, FUNC0(9, 8), 0x144);
			FUNC5(mac, FUNC0(9, 12), 0x188);
		}
	} else {
		FUNC1(mac, BWN_NPHY_GPIO_LOOEN, 0);
		FUNC1(mac, BWN_NPHY_GPIO_HIOEN, 0);

		if ((error = FUNC4(mac, 0xfc00)))
			return (error);

		FUNC3(mac, BWN_MACCTL, ~BWN_MACCTL_GPOUT_MASK, 0);
		FUNC2(mac, BWN_GPIO_MASK, ~0, 0xFC00);
		FUNC2(mac, BWN_GPIO_CONTROL, (~0xFC00 & 0xFFFF),
			      0);

		if (init) {
			FUNC1(mac, BWN_NPHY_RFCTL_LUT_TRSW_LO1, 0x2D8);
			FUNC1(mac, BWN_NPHY_RFCTL_LUT_TRSW_UP1, 0x301);
			FUNC1(mac, BWN_NPHY_RFCTL_LUT_TRSW_LO2, 0x2D8);
			FUNC1(mac, BWN_NPHY_RFCTL_LUT_TRSW_UP2, 0x301);
		}
	}

	return (0);
}