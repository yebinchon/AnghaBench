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
struct thread {scalar_t__ td_priority; } ;
struct tdq {scalar_t__ tdq_lowpri; } ;
struct TYPE_2__ {struct thread* pc_curthread; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct thread* FUNC3 (struct tdq*) ; 

__attribute__((used)) static void
FUNC4(struct tdq *tdq, struct thread *ctd)
{
	struct thread *td;

	FUNC1(tdq, MA_OWNED);
	if (ctd == NULL)
		ctd = FUNC2(FUNC0(tdq))->pc_curthread;
	td = FUNC3(tdq);
	if (td == NULL || td->td_priority > ctd->td_priority)
		tdq->tdq_lowpri = ctd->td_priority;
	else
		tdq->tdq_lowpri = td->td_priority;
}