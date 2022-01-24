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
typedef  int u_int ;
struct com_s {int* delta_error_counts; int* error_counts; } ;

/* Variables and functions */
 int CE_NTYPES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NPORTS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct com_s* FUNC4 (int) ; 
 scalar_t__ cy_timeout ; 
 int /*<<< orphan*/  cy_timeout_handle ; 
 scalar_t__ cy_timeouts_until_log ; 
 int /*<<< orphan*/ * error_desc ; 
 scalar_t__ hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void (*) (void*),void*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void *chan)
{
	struct com_s	*com;
	int		unit;

	cy_timeout_handle = FUNC6(cywakeup, (void *)NULL, cy_timeout);

	/*
	 * Check for and log errors, but not too often.
	 */
	if (--cy_timeouts_until_log > 0)
		return;
	cy_timeouts_until_log = hz / cy_timeout;
	for (unit = 0; unit < NPORTS; ++unit) {
		int	errnum;

		com = FUNC4(unit);
		if (com == NULL)
			continue;
		for (errnum = 0; errnum < CE_NTYPES; ++errnum) {
			u_int	delta;
			u_long	total;

			FUNC2();
			FUNC0();
			delta = com->delta_error_counts[errnum];
			com->delta_error_counts[errnum] = 0;
			FUNC1();
			FUNC3();
			if (delta == 0)
				continue;
			total = com->error_counts[errnum] += delta;
			FUNC5(LOG_ERR, "cy%d: %u more %s%s (total %lu)\n",
			    unit, delta, error_desc[errnum],
			    delta == 1 ? "" : "s", total);
		}
	}
}