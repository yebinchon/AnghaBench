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
struct thread {int /*<<< orphan*/  td_priority; } ;
struct tdq {int /*<<< orphan*/  tdq_lowpri; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRI_MAX_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 struct tdq* FUNC2 () ; 
 int /*<<< orphan*/  idlethread ; 
 struct thread* FUNC3 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC4 (struct tdq*,struct thread*) ; 

struct thread *
FUNC5(void)
{
	struct thread *td;
	struct tdq *tdq;

	tdq = FUNC2();
	FUNC1(tdq, MA_OWNED);
	td = FUNC3(tdq);
	if (td) {
		FUNC4(tdq, td);
		tdq->tdq_lowpri = td->td_priority;
		return (td);
	}
	tdq->tdq_lowpri = PRI_MAX_IDLE;
	return (FUNC0(idlethread));
}