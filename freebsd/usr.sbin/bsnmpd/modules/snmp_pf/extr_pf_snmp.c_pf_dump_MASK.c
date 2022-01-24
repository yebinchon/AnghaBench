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
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ altq_enabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ pfa_table_age ; 
 int /*<<< orphan*/  pfa_table_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ pfi_table_age ; 
 int /*<<< orphan*/  pfi_table_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ pfl_table_age ; 
 int /*<<< orphan*/  pfl_table_count ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ pfq_table_age ; 
 int /*<<< orphan*/  pfq_table_count ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ pft_table_age ; 
 int /*<<< orphan*/  pft_table_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	FUNC1();
	if (altq_enabled) {
		FUNC3();
	}
	FUNC4();
	FUNC0();
	FUNC2();

	FUNC5(LOG_ERR, "Dump: pfi_table_age = %jd",
	    (intmax_t)pfi_table_age);
	FUNC5(LOG_ERR, "Dump: pfi_table_count = %d",
	    pfi_table_count);

	FUNC5(LOG_ERR, "Dump: pfq_table_age = %jd",
	    (intmax_t)pfq_table_age);
	FUNC5(LOG_ERR, "Dump: pfq_table_count = %d",
	    pfq_table_count);

	FUNC5(LOG_ERR, "Dump: pft_table_age = %jd",
	    (intmax_t)pft_table_age);
	FUNC5(LOG_ERR, "Dump: pft_table_count = %d",
	    pft_table_count);

	FUNC5(LOG_ERR, "Dump: pfa_table_age = %jd",
	    (intmax_t)pfa_table_age);
	FUNC5(LOG_ERR, "Dump: pfa_table_count = %d",
	    pfa_table_count);

	FUNC5(LOG_ERR, "Dump: pfl_table_age = %jd",
	    (intmax_t)pfl_table_age);
	FUNC5(LOG_ERR, "Dump: pfl_table_count = %d",
	    pfl_table_count);
}