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
struct thread {int td_flags; int /*<<< orphan*/  td_proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 int TDF_ASTPENDING ; 
 int TDF_NEEDSIGCHK ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(struct thread *td)
{

	FUNC0(td->td_proc, MA_OWNED);

	if (FUNC1(td)) {
		FUNC2(td);
		td->td_flags |= TDF_NEEDSIGCHK | TDF_ASTPENDING;
		FUNC3(td);
	}
}