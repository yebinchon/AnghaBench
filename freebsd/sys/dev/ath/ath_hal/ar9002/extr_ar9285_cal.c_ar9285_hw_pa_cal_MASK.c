#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct TYPE_4__ {TYPE_1__ pacal_info; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_NULL ; 
 scalar_t__ AR5416_EEP_TXGAIN_HIGH_POWER ; 
 int AR9285_AN_RF2G1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_ENPACAL ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPAOUT ; 
 int AR9285_AN_RF2G2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G2_OFFCAL ; 
 int AR9285_AN_RF2G3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3_PDVCCOMP ; 
 int AR9285_AN_RF2G6 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G6_CCOMP ; 
 int /*<<< orphan*/  AR9285_AN_RF2G6_OFFS ; 
 int AR9285_AN_RF2G7 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PADRVGN2TAB0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PWDDB ; 
 int AR9285_AN_RF2G8 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G8_PADRVGN2TAB0 ; 
 int AR9285_AN_RF2G9 ; 
 int AR9285_AN_RXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDDACIF ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDRXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDV2I ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_SPARE9 ; 
 int AR9285_AN_TOP2 ; 
 int AR9285_AN_TOP3 ; 
 int /*<<< orphan*/  AR9285_AN_TOP3_PWDDAC ; 
 int /*<<< orphan*/  AR_EEP_TXGAIN_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HAL_DEBUG_PERCAL ; 
 int MAX_PACAL_SKIPCOUNT ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int,int) ; 
 scalar_t__ FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ath_hal *ah, HAL_BOOL is_reset)
{
	uint32_t regVal;
	int i, offset, offs_6_1, offs_0;
	uint32_t ccomp_org, reg_field;
	uint32_t regList[][2] = {
		{ 0x786c, 0 },
		{ 0x7854, 0 },
		{ 0x7820, 0 },
		{ 0x7824, 0 },
		{ 0x7868, 0 },
		{ 0x783c, 0 },
		{ 0x7838, 0 },
	};

	/* PA CAL is not needed for high power solution */
	if (FUNC8(ah, AR_EEP_TXGAIN_TYPE, AH_NULL) ==
	    AR5416_EEP_TXGAIN_HIGH_POWER)
		return;

	FUNC1(ah, HAL_DEBUG_PERCAL, "Running PA Calibration\n");

	for (i = 0; i < FUNC3(regList); i++)
		regList[i][1] = FUNC5(ah, regList[i][0]);

	regVal = FUNC5(ah, 0x7834);
	regVal &= (~(0x1));
	FUNC7(ah, 0x7834, regVal);
	regVal = FUNC5(ah, 0x9808);
	regVal |= (0x1 << 27);
	FUNC7(ah, 0x9808, regVal);

	FUNC6(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC, 1);
	FUNC6(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1, 1);
	FUNC6(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I, 1);
	FUNC6(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF, 1);
	FUNC6(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL, 0);
	FUNC6(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB, 0);
	FUNC6(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL, 0);
	FUNC6(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1, 0);
	FUNC6(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2, 0);
	FUNC6(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT, 0);
	FUNC6(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);
	FUNC6(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);
	ccomp_org = FUNC2(FUNC5(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_CCOMP);
	FUNC6(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, 0xf);

	FUNC7(ah, AR9285_AN_TOP2, 0xca0358a0);
	FUNC4(30);
	FUNC6(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, 0);
	FUNC6(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 0);

	for (i = 6; i > 0; i--) {
		regVal = FUNC5(ah, 0x7834);
		regVal |= (1 << (19 + i));
		FUNC7(ah, 0x7834, regVal);
		FUNC4(1);
		regVal = FUNC5(ah, 0x7834);
		regVal &= (~(0x1 << (19 + i)));
		reg_field = FUNC2(FUNC5(ah, 0x7840), AR9285_AN_RXTXBB1_SPARE9);
		regVal |= (reg_field << (19 + i));
		FUNC7(ah, 0x7834, regVal);
	}

	FUNC6(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, 1);
	FUNC4(1);
	reg_field = FUNC2(FUNC5(ah, AR9285_AN_RF2G9), AR9285_AN_RXTXBB1_SPARE9);
	FUNC6(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, reg_field);
	offs_6_1 = FUNC2(FUNC5(ah, AR9285_AN_RF2G6), AR9285_AN_RF2G6_OFFS);
	offs_0   = FUNC2(FUNC5(ah, AR9285_AN_RF2G3), AR9285_AN_RF2G3_PDVCCOMP);

	offset = (offs_6_1<<1) | offs_0;
	offset = offset - 0;
	offs_6_1 = offset>>1;
	offs_0 = offset & 1;

	if ((!is_reset) && (FUNC0(ah)->pacal_info.prev_offset == offset)) {
		if (FUNC0(ah)->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
			FUNC0(ah)->pacal_info.max_skipcount =
				2 * FUNC0(ah)->pacal_info.max_skipcount;
		FUNC0(ah)->pacal_info.skipcount = FUNC0(ah)->pacal_info.max_skipcount;
	} else {
		FUNC0(ah)->pacal_info.max_skipcount = 1;
		FUNC0(ah)->pacal_info.skipcount = 0;
		FUNC0(ah)->pacal_info.prev_offset = offset;
	}

	FUNC6(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_OFFS, offs_6_1);
	FUNC6(ah, AR9285_AN_RF2G3, AR9285_AN_RF2G3_PDVCCOMP, offs_0);

	regVal = FUNC5(ah, 0x7834);
	regVal |= 0x1;
	FUNC7(ah, 0x7834, regVal);
	regVal = FUNC5(ah, 0x9808);
	regVal &= (~(0x1 << 27));
	FUNC7(ah, 0x9808, regVal);

	for (i = 0; i < FUNC3(regList); i++)
		FUNC7(ah, regList[i][0], regList[i][1]);

	FUNC6(ah, AR9285_AN_RF2G6, AR9285_AN_RF2G6_CCOMP, ccomp_org);
}