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
 int NVR_BITOUT ; 
 int NVR_CLOCK ; 
 int NVR_SELECT ; 
 int /*<<< orphan*/  TRMREG_GEN_NVRAM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(PACB pACB, u_int8_t bCmd, u_int8_t bAddr)
{
	int		i;
	u_int8_t	bSendData;
					
    	for (i = 0; i < 3; i++, bCmd <<= 1) {
	  /* 
   	   * Program SB+OP code		
   	   */
     		bSendData = NVR_SELECT;
		if (bCmd & 0x04)	
			bSendData |= NVR_BITOUT;
		/* start from bit 2 */
		FUNC1(bSendData, TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		FUNC1((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
		FUNC0(pACB);
	}	
	for (i = 0; i < 7; i++, bAddr <<= 1) {
	  /* 
	   * Program address		
	   */
		bSendData = NVR_SELECT;
		if (bAddr & 0x40)	
		  /* Start from bit 6	*/
			bSendData |= NVR_BITOUT;
		FUNC1(bSendData , TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		FUNC1((bSendData | NVR_CLOCK), TRMREG_GEN_NVRAM);
		FUNC0(pACB);
	}
	FUNC1(NVR_SELECT, TRMREG_GEN_NVRAM);
	FUNC0(pACB);
}