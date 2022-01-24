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
typedef  int /*<<< orphan*/  PACB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int NVR_BITIN ; 
 int NVR_BITOUT ; 
 int NVR_CLOCK ; 
 int NVR_SELECT ; 
 int /*<<< orphan*/  TRMREG_GEN_NVRAM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(PACB pACB, u_int8_t bAddr, u_int8_t bData)
{
	int		i;
	u_int8_t	bSendData;
	/* 
	 * Send write command & address	
	 */
	
	FUNC1(pACB, 0x05, bAddr);
	/* 
	 * Write data 
	 */
	for (i = 0; i < 8; i++, bData <<= 1) {
		bSendData = NVR_SELECT;
		if (bData & 0x80)
		  /* Start from bit 7	*/
			bSendData |= NVR_BITOUT;
		FUNC3(bSendData , TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		FUNC3((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
		FUNC0(pACB);
	}
	FUNC3(NVR_SELECT , TRMREG_GEN_NVRAM);
	FUNC0(pACB);
	/*
	 * Disable chip select 
	 */
	FUNC3(0 , TRMREG_GEN_NVRAM);
	FUNC0(pACB);
	FUNC3(NVR_SELECT ,TRMREG_GEN_NVRAM);
	FUNC0(pACB);
	/* 
	 * Wait for write ready	
	 */
	while (1) {
		FUNC3((NVR_SELECT | NVR_CLOCK), TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		FUNC3(NVR_SELECT, TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		if (FUNC2(TRMREG_GEN_NVRAM) & NVR_BITIN) {
			break;
		}
	}
	/* 
	 * Disable chip select 
	 */
	FUNC3(0, TRMREG_GEN_NVRAM);
	return;
}