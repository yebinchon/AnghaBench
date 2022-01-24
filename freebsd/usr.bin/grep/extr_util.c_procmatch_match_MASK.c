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
struct parsec {scalar_t__ matchidx; } ;
struct mprintc {int same_file; scalar_t__ last_outed; scalar_t__ printmatch; int /*<<< orphan*/  tail; scalar_t__ doctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  Aflag ; 
 scalar_t__ Bflag ; 
 scalar_t__ MAX_MATCHES ; 
 int first_match ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct parsec*,char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct parsec*) ; 
 int /*<<< orphan*/  vflag ; 

__attribute__((used)) static void
FUNC4(struct mprintc *mc, struct parsec *pc)
{

	if (mc->doctx) {
		if (!first_match && (!mc->same_file || mc->last_outed > 0))
			FUNC0("--\n");
		if (Bflag > 0)
			FUNC2();
		mc->tail = Aflag;
	}

	/* Print the matching line, but only if not quiet/binary */
	if (mc->printmatch) {
		FUNC1(pc, ':');
		while (pc->matchidx >= MAX_MATCHES) {
			/* Reset matchidx and try again */
			pc->matchidx = 0;
			if (FUNC3(pc) == !vflag)
				FUNC1(pc, ':');
			else
				break;
		}
		first_match = false;
		mc->same_file = true;
		mc->last_outed = 0;
	}
}