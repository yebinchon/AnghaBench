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
typedef  int uint32_t ;

/* Variables and functions */
 int FSL_E500mc ; 
 int FSL_E5500 ; 
 int L2CSR0_L2E ; 
 int RB_VERBOSE ; 
 int /*<<< orphan*/  SPR_L2CSR0 ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(void)
{
	uint32_t csr;

	/* Enable L2 cache on E500mc */
	if ((((FUNC2() >> 16) & 0xFFFF) == FSL_E500mc) ||
	    (((FUNC2() >> 16) & 0xFFFF) == FSL_E5500)) {
		csr = FUNC3(SPR_L2CSR0);
		if ((csr & L2CSR0_L2E) == 0) {
			FUNC1();
			FUNC0();
		}

		csr = FUNC3(SPR_L2CSR0);
		if ((boothowto & RB_VERBOSE) != 0 || (csr & L2CSR0_L2E) == 0)
			FUNC4("L2 cache %sabled\n",
			    (csr & L2CSR0_L2E) ? "en" : "dis");
	}
}