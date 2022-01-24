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
struct ahc_softc {int features; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int AHC_LARGE_SCBS ; 
 int /*<<< orphan*/  AHC_SCB_BTT ; 
 int BRKADRINT ; 
 int CLRBRKADRINT ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRPARERR ; 
 int /*<<< orphan*/  ERROR ; 
 int FAILDIS ; 
 int FALSE ; 
 int /*<<< orphan*/  INTSTAT ; 
 int MPARERR ; 
 int PERRORDIS ; 
 int /*<<< orphan*/  SEQCTL ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct ahc_softc*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int,int,int,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct ahc_softc *ahc)
{
	int num_scbs;
	int test_num_scbs;
	int enable;
	int pcheck;
	int fast;
	int large;

	enable = FALSE;
	pcheck = FALSE;
	fast = FALSE;
	large = FALSE;
	num_scbs = 0;
	
	if (FUNC0(ahc) == 0)
		goto done;

	/*
	 * Probe for the best parameters to use.
	 */
	FUNC5(ahc, /*enable*/TRUE, pcheck, fast, large);
	num_scbs = FUNC4(ahc);
	if (num_scbs == 0) {
		/* The SRAM wasn't really present. */
		goto done;
	}
	enable = TRUE;

	/*
	 * Clear any outstanding parity error
	 * and ensure that parity error reporting
	 * is enabled.
	 */
	FUNC3(ahc, SEQCTL, 0);
	FUNC3(ahc, CLRINT, CLRPARERR);
	FUNC3(ahc, CLRINT, CLRBRKADRINT);

	/* Now see if we can do parity */
	FUNC5(ahc, enable, /*pcheck*/TRUE, fast, large);
	num_scbs = FUNC4(ahc);
	if ((FUNC1(ahc, INTSTAT) & BRKADRINT) == 0
	 || (FUNC1(ahc, ERROR) & MPARERR) == 0)
		pcheck = TRUE;

	/* Clear any resulting parity error */
	FUNC3(ahc, CLRINT, CLRPARERR);
	FUNC3(ahc, CLRINT, CLRBRKADRINT);

	/* Now see if we can do fast timing */
	FUNC5(ahc, enable, pcheck, /*fast*/TRUE, large);
	test_num_scbs = FUNC4(ahc);
	if (test_num_scbs == num_scbs
	 && ((FUNC1(ahc, INTSTAT) & BRKADRINT) == 0
	  || (FUNC1(ahc, ERROR) & MPARERR) == 0))
		fast = TRUE;

	/*
	 * See if we can use large SCBs and still maintain
	 * the same overall count of SCBs.
	 */
	if ((ahc->features & AHC_LARGE_SCBS) != 0) {
		FUNC5(ahc, enable, pcheck, fast, /*large*/TRUE);
		test_num_scbs = FUNC4(ahc);
		if (test_num_scbs >= num_scbs) {
			large = TRUE;
			num_scbs = test_num_scbs;
	 		if (num_scbs >= 64) {
				/*
				 * We have enough space to move the
				 * "busy targets table" into SCB space
				 * and make it qualify all the way to the
				 * lun level.
				 */
				ahc->flags |= AHC_SCB_BTT;
			}
		}
	}
done:
	/*
	 * Disable parity error reporting until we
	 * can load instruction ram.
	 */
	FUNC3(ahc, SEQCTL, PERRORDIS|FAILDIS);
	/* Clear any latched parity error */
	FUNC3(ahc, CLRINT, CLRPARERR);
	FUNC3(ahc, CLRINT, CLRBRKADRINT);
	if (bootverbose && enable) {
		FUNC6("%s: External SRAM, %s access%s, %dbytes/SCB\n",
		       FUNC2(ahc), fast ? "fast" : "slow", 
		       pcheck ? ", parity checking enabled" : "",
		       large ? 64 : 32);
	}
	FUNC5(ahc, enable, pcheck, fast, large);
}