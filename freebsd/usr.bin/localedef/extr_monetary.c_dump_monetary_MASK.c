#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  int_n_sign_posn; int /*<<< orphan*/  int_p_sign_posn; int /*<<< orphan*/  int_n_sep_by_space; int /*<<< orphan*/  int_p_sep_by_space; int /*<<< orphan*/  int_n_cs_precedes; int /*<<< orphan*/  int_p_cs_precedes; int /*<<< orphan*/  n_sign_posn; int /*<<< orphan*/  p_sign_posn; int /*<<< orphan*/  n_sep_by_space; int /*<<< orphan*/  n_cs_precedes; int /*<<< orphan*/  p_sep_by_space; int /*<<< orphan*/  p_cs_precedes; int /*<<< orphan*/  frac_digits; int /*<<< orphan*/  int_frac_digits; int /*<<< orphan*/  negative_sign; int /*<<< orphan*/  positive_sign; int /*<<< orphan*/  mon_grouping; int /*<<< orphan*/  mon_thousands_sep; int /*<<< orphan*/  mon_decimal_point; int /*<<< orphan*/  currency_symbol; int /*<<< orphan*/  int_curr_symbol; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mon ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	FILE *f;

	if ((f = FUNC1()) == NULL) {
		return;
	}

	if ((FUNC2(mon.int_curr_symbol, f) == EOF) ||
	    (FUNC2(mon.currency_symbol, f) == EOF) ||
	    (FUNC2(mon.mon_decimal_point, f) == EOF) ||
	    (FUNC2(mon.mon_thousands_sep, f) == EOF) ||
	    (FUNC2(mon.mon_grouping, f) == EOF) ||
	    (FUNC2(mon.positive_sign, f) == EOF) ||
	    (FUNC2(mon.negative_sign, f) == EOF) ||
	    (FUNC2(mon.int_frac_digits, f) == EOF) ||
	    (FUNC2(mon.frac_digits, f) == EOF) ||
	    (FUNC2(mon.p_cs_precedes, f) == EOF) ||
	    (FUNC2(mon.p_sep_by_space, f) == EOF) ||
	    (FUNC2(mon.n_cs_precedes, f) == EOF) ||
	    (FUNC2(mon.n_sep_by_space, f) == EOF) ||
	    (FUNC2(mon.p_sign_posn, f) == EOF) ||
	    (FUNC2(mon.n_sign_posn, f) == EOF) ||
	    (FUNC2(mon.int_p_cs_precedes, f) == EOF) ||
	    (FUNC2(mon.int_n_cs_precedes, f) == EOF) ||
	    (FUNC2(mon.int_p_sep_by_space, f) == EOF) ||
	    (FUNC2(mon.int_n_sep_by_space, f) == EOF) ||
	    (FUNC2(mon.int_p_sign_posn, f) == EOF) ||
	    (FUNC2(mon.int_n_sign_posn, f) == EOF)) {
		return;
	}
	FUNC0(f);
}