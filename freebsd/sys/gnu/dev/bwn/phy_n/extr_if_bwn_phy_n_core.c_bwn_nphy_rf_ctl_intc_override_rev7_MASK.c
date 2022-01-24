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
struct bwn_mac {int dummy; } ;
typedef  enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_BAND_5G ; 
 int BWN_NPHY_RFCTL_INTC1 ; 
 int BWN_NPHY_RFCTL_INTC2 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BWN_RFSEQ_RESET2RX ; 
#define  N_INTC_OVERRIDE_EXT_LNA_GAIN 132 
#define  N_INTC_OVERRIDE_EXT_LNA_PU 131 
#define  N_INTC_OVERRIDE_OFF 130 
#define  N_INTC_OVERRIDE_PA 129 
#define  N_INTC_OVERRIDE_TRSW 128 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bwn_mac *mac,
					       enum n_intc_override intc_override,
					       uint16_t value, uint8_t core_sel)
{
	uint16_t reg, tmp, tmp2, val;
	int core;

	/* TODO: What about rev19+? Revs 3+ and 7+ are a bit similar */

	for (core = 0; core < 2; core++) {
		if ((core_sel == 1 && core != 0) ||
		    (core_sel == 2 && core != 1))
			continue;

		reg = (core == 0) ? BWN_NPHY_RFCTL_INTC1 : BWN_NPHY_RFCTL_INTC2;

		switch (intc_override) {
		case N_INTC_OVERRIDE_OFF:
			FUNC3(mac, reg, 0);
			FUNC0(mac, 0x2ff, ~0x2000);
			FUNC5(mac, BWN_RFSEQ_RESET2RX);
			break;
		case N_INTC_OVERRIDE_TRSW:
			FUNC2(mac, reg, ~0xC0, value << 6);
			FUNC1(mac, reg, 0x400);

			FUNC0(mac, 0x2ff, ~0xC000 & 0xFFFF);
			FUNC1(mac, 0x2ff, 0x2000);
			FUNC1(mac, 0x2ff, 0x0001);
			break;
		case N_INTC_OVERRIDE_PA:
			tmp = 0x0030;
			if (FUNC4(mac) == BWN_BAND_5G)
				val = value << 5;
			else
				val = value << 4;
			FUNC2(mac, reg, ~tmp, val);
			FUNC1(mac, reg, 0x1000);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_PU:
			if (FUNC4(mac) == BWN_BAND_5G) {
				tmp = 0x0001;
				tmp2 = 0x0004;
				val = value;
			} else {
				tmp = 0x0004;
				tmp2 = 0x0001;
				val = value << 2;
			}
			FUNC2(mac, reg, ~tmp, val);
			FUNC0(mac, reg, ~tmp2);
			break;
		case N_INTC_OVERRIDE_EXT_LNA_GAIN:
			if (FUNC4(mac) == BWN_BAND_5G) {
				tmp = 0x0002;
				tmp2 = 0x0008;
				val = value << 1;
			} else {
				tmp = 0x0008;
				tmp2 = 0x0002;
				val = value << 3;
			}
			FUNC2(mac, reg, ~tmp, val);
			FUNC0(mac, reg, ~tmp2);
			break;
		}
	}
}