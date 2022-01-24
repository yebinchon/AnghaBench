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
struct pr {scalar_t__ ostdout; scalar_t__ kq; TYPE_1__* e; } ;
struct TYPE_2__ {int data; } ;

/* Variables and functions */
 scalar_t__ STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pr*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC11(struct pr *pr)
{
	int wstatus;

	if (pr == NULL)
		return;

	FUNC8(stdout);
	if (pr->ostdout != STDOUT_FILENO) {
		FUNC4(STDOUT_FILENO);
		FUNC5(pr->ostdout, STDOUT_FILENO);
		FUNC4(pr->ostdout);
	}
	if (FUNC10(pr->kq, NULL, 0, pr->e, 1, NULL) == -1)
		FUNC6(2, "kevent");
	wstatus = pr->e[0].data;
	FUNC4(pr->kq);
	FUNC9(pr);
	if (FUNC1(wstatus) && FUNC0(wstatus) != 0)
		FUNC7(2, "pr exited abnormally");
	else if (FUNC2(wstatus))
		FUNC7(2, "pr killed by signal %d",
		    FUNC3(wstatus));
}