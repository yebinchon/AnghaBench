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
 int BUCSR_BPEN ; 
 int RB_VERBOSE ; 
 int /*<<< orphan*/  SPR_BUCSR ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(void)
{
	uint32_t csr;

	FUNC0();
	csr = FUNC1(SPR_BUCSR);
	if ((boothowto & RB_VERBOSE) != 0 || (csr & BUCSR_BPEN) == 0)
		FUNC2("Branch Predictor %sabled\n",
		    (csr & BUCSR_BPEN) ? "en" : "dis");
}