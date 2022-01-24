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
struct thread {int td_priority; int td_owepreempt; int /*<<< orphan*/  td_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  TDF_NEEDRESCHED ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ cold ; 
 struct thread* curthread ; 
 int /*<<< orphan*/ * panicstr ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct thread *td)
{
	struct thread *ctd;
	int cpri;
	int pri;

	FUNC1(curthread, MA_OWNED);

	ctd = curthread;
	pri = td->td_priority;
	cpri = ctd->td_priority;
	if (pri < cpri)
		ctd->td_flags |= TDF_NEEDRESCHED;
	if (panicstr != NULL || pri >= cpri || cold || FUNC0(ctd))
		return;
	if (!FUNC2(pri, cpri, 0))
		return;
	ctd->td_owepreempt = 1;
}