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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRMREG_GEN_CONTROL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC3(PNVRAMTYPE pEEpromBuf, PACB pACB)
{
	u_int8_t	*bpEeprom = (u_int8_t*) pEEpromBuf;
	u_int8_t	bAddr;
    
	/*
	 * Enable SEEPROM 
	 */
	FUNC2((FUNC1(TRMREG_GEN_CONTROL) | EN_EEPROM),
	    TRMREG_GEN_CONTROL);
	for (bAddr = 0; bAddr < 128; bAddr++, bpEeprom++)
		*bpEeprom = FUNC0(pACB, bAddr);
	/* 
	 * Disable SEEPROM 
	 */
	FUNC2((FUNC1(TRMREG_GEN_CONTROL) & ~EN_EEPROM),
	    TRMREG_GEN_CONTROL);
	return;
}