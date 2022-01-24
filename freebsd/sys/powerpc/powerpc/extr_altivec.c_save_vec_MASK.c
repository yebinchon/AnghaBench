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
struct thread {struct pcb* td_pcb; } ;
struct pcb {int /*<<< orphan*/  pcb_veccpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  vecthread ; 

void
FUNC2(struct thread *td)
{
	struct pcb *pcb;

	pcb = td->td_pcb;

	FUNC1(td);

	/*
	 * Clear the current vec thread and pcb's CPU id
	 * XXX should this be left clear to allow lazy save/restore ?
	 */
	pcb->pcb_veccpu = INT_MAX;
	FUNC0(vecthread, NULL);
}