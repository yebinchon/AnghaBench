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
typedef  int u_int8_t ;
typedef  scalar_t__ PNVRAMTYPE ;
typedef  int /*<<< orphan*/  PACB ;

/* Variables and functions */
 int EN_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRMREG_GEN_CONTROL ; 
 int /*<<< orphan*/  TRMREG_GEN_NVRAM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(PNVRAMTYPE pEEpromBuf,PACB pACB)
{
	u_int8_t	*bpEeprom = (u_int8_t *) pEEpromBuf;
	u_int8_t	bAddr;

	/* Enable SEEPROM */
	FUNC4((FUNC3(TRMREG_GEN_CONTROL) | EN_EEPROM),
	    TRMREG_GEN_CONTROL);
	/*
	 * Write enable
	 */
	FUNC2(pACB, 0x04, 0xFF);
	FUNC4(0, TRMREG_GEN_NVRAM);
	FUNC1(pACB);
	for (bAddr = 0; bAddr < 128; bAddr++, bpEeprom++) { 
		FUNC0(pACB, bAddr, *bpEeprom);
	}
	/* 
	 * Write disable
	 */
	FUNC2(pACB, 0x04, 0x00);
	FUNC4(0 , TRMREG_GEN_NVRAM);
	FUNC1(pACB);
	/* Disable SEEPROM */
	FUNC4((FUNC3(TRMREG_GEN_CONTROL) & ~EN_EEPROM),
	    TRMREG_GEN_CONTROL);
	return;
}