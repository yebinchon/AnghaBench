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
struct TYPE_2__ {int /*<<< orphan*/  grouping; int /*<<< orphan*/  thousands_sep; int /*<<< orphan*/  decimal_point; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ numeric ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	FILE *f;

	if ((f = FUNC1()) == NULL) {
		return;
	}

	if ((FUNC2(numeric.decimal_point, f) == EOF) ||
	    (FUNC2(numeric.thousands_sep, f) == EOF) ||
	    (FUNC2(numeric.grouping, f) == EOF)) {
		return;
	}
	FUNC0(f);
}