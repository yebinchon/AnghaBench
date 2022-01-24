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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCP85XX_CPC_CFG0 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OCP85XX_CPC_CSR0 ; 
 scalar_t__ OCP85XX_CPC_CSR0_CE ; 
 int RB_VERBOSE ; 
 int /*<<< orphan*/  SPR_SVR ; 
 scalar_t__ SVR_P2041 ; 
 scalar_t__ SVR_P2041E ; 
 scalar_t__ SVR_P3041 ; 
 scalar_t__ SVR_P3041E ; 
 scalar_t__ SVR_P5020 ; 
 scalar_t__ SVR_P5020E ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int boothowto ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,char*) ; 

void
FUNC7(void)
{
	uint32_t csr, size, ver;

	/* Enable L3 CoreNet Platform Cache (CPC) */
	ver = FUNC1(FUNC5(SPR_SVR));
	if (ver == SVR_P2041 || ver == SVR_P2041E || ver == SVR_P3041 ||
	    ver == SVR_P3041E || ver == SVR_P5020 || ver == SVR_P5020E) {
		csr = FUNC2(OCP85XX_CPC_CSR0);
		if ((csr & OCP85XX_CPC_CSR0_CE) == 0) {
			FUNC4();
			FUNC3();
		}

		csr = FUNC2(OCP85XX_CPC_CSR0);
		if ((boothowto & RB_VERBOSE) != 0 ||
		    (csr & OCP85XX_CPC_CSR0_CE) == 0) {
			size = FUNC0(FUNC2(OCP85XX_CPC_CFG0));
			FUNC6("L3 Corenet Platform Cache: %d KB %sabled\n",
			    size, (csr & OCP85XX_CPC_CSR0_CE) == 0 ?
			    "dis" : "en");
		}
	}
}