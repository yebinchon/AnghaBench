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
 int NVR_CLOCK ; 
 int NVR_SELECT ; 
 int /*<<< orphan*/  TRMREG_GEN_NVRAM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int8_t
FUNC4(PACB pACB, u_int8_t bAddr)
{
	int		i;
	u_int8_t	bReadData, bData = 0;
	/* 
	* Send read command & address
	*/
	
	FUNC1(pACB, 0x06, bAddr);
				
	for (i = 0; i < 8; i++) {
	  /* 
	   * Read data
	   */
		FUNC3((NVR_SELECT | NVR_CLOCK) , TRMREG_GEN_NVRAM);
		FUNC0(pACB);
		FUNC3(NVR_SELECT , TRMREG_GEN_NVRAM);
		/* 
		 * Get data bit while falling edge 
		 */
		bReadData = FUNC2(TRMREG_GEN_NVRAM);
		bData <<= 1;
		if (bReadData & NVR_BITIN) {
			bData |= 1;
		}
		FUNC0(pACB);
	}
	/* 
	 * Disable chip select 
	 */
	FUNC3(0, TRMREG_GEN_NVRAM);
	return (bData);
}