#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* wint_t ;
typedef  size_t u_long ;
struct TYPE_3__ {size_t fieldcnt; char** fields; } ;
typedef  TYPE_1__ LINE ;

/* Variables and functions */
 char* empty ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  needsep ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__* tabchar ; 

__attribute__((used)) static void
FUNC3(LINE *lp, u_long fieldno, int out_empty)
{
	if (needsep++)
		(void)FUNC2("%lc", (wint_t)*tabchar);
	if (!FUNC1(stdout)) {
		if (lp->fieldcnt <= fieldno || out_empty) {
			if (empty != NULL)
				(void)FUNC2("%s", empty);
		} else {
			if (*lp->fields[fieldno] == '\0')
				return;
			(void)FUNC2("%s", lp->fields[fieldno]);
		}
	}
	if (FUNC1(stdout))
		FUNC0(1, "stdout");
}