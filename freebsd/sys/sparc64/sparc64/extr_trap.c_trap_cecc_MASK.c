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
typedef  int u_long ;

/* Variables and functions */
 int AA_ESTATE_CEEN ; 
 int AA_ESTATE_NCEEN ; 
 int /*<<< orphan*/  ASI_AFSR ; 
 int /*<<< orphan*/  ASI_ESTATE_ERROR_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  corrected_ecc ; 
 int /*<<< orphan*/  impl ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(void)
{
	u_long eee;

	/*
	 * Turn off (non-)correctable error reporting while we're dealing
	 * with the error.
	 */
	eee = FUNC3(0, ASI_ESTATE_ERROR_EN_REG);
	FUNC5(0, ASI_ESTATE_ERROR_EN_REG, eee & ~(AA_ESTATE_NCEEN |
	    AA_ESTATE_CEEN));
	/* Flush the caches in order ensure no corrupt data got installed. */
	FUNC2();
	/* Ensure the caches are still turned on (should be). */
	FUNC1(FUNC0(impl));
	/* Clear the error from the AFSR. */
	FUNC5(0, ASI_AFSR, FUNC3(0, ASI_AFSR));
	corrected_ecc++;
	FUNC4("corrected ECC error\n");
	/* Turn (non-)correctable error reporting back on. */
	FUNC5(0, ASI_ESTATE_ERROR_EN_REG, eee);
	return (0);
}