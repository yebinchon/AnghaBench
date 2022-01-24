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
typedef  enum pmc_mode { ____Placeholder_pmc_mode } pmc_mode ;
typedef  enum pmc_disp { ____Placeholder_pmc_disp } pmc_disp ;

/* Variables and functions */
 int /*<<< orphan*/  ALR ; 
 int EBUSY ; 
 int /*<<< orphan*/  PMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int) ; 
 int PMC_DISP_STANDALONE ; 
 int PMC_DISP_THREAD ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  pmc_sx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int ri, enum pmc_mode mode)
{
	enum pmc_disp	disp;

	FUNC5(&pmc_sx, SX_XLOCKED);

	FUNC0(PMC,ALR,1, "can-allocate-row ri=%d mode=%d", ri, mode);

	if (FUNC1(mode))
		disp = PMC_DISP_STANDALONE;
	else
		disp = PMC_DISP_THREAD;

	/*
	 * check disposition for PMC row 'ri':
	 *
	 * Expected disposition		Row-disposition		Result
	 *
	 * STANDALONE			STANDALONE or FREE	proceed
	 * STANDALONE			THREAD			fail
	 * THREAD			THREAD or FREE		proceed
	 * THREAD			STANDALONE		fail
	 */

	if (!FUNC2(ri) &&
	    !(disp == PMC_DISP_THREAD && FUNC4(ri)) &&
	    !(disp == PMC_DISP_STANDALONE && FUNC3(ri)))
		return EBUSY;

	/*
	 * All OK
	 */

	FUNC0(PMC,ALR,2, "can-allocate-row ri=%d mode=%d ok", ri, mode);

	return 0;

}