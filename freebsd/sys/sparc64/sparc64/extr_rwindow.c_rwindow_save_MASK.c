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
typedef  int u_long ;
struct thread {TYPE_1__* td_proc; struct pcb* td_pcb; } ;
struct rwindow {int dummy; } ;
struct pcb {int pcb_nsaved; int* pcb_rwsp; struct rwindow* pcb_rw; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_TRAP ; 
 int MAXWIN ; 
 int SIGILL ; 
 scalar_t__ SPOFF ; 
 int FUNC3 (struct rwindow*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(struct thread *td)
{
	struct rwindow *rw;
	struct pcb *pcb;
	u_long *ausp;
	u_long usp;
	int error;
	int i;

	pcb = td->td_pcb;
	FUNC1(KTR_TRAP, "rwindow_save: td=%p (%s) nsaved=%d", td,
	    td->td_proc->p_comm, pcb->pcb_nsaved);

	FUNC4();
	FUNC2(pcb->pcb_nsaved < MAXWIN,
	    ("rwindow_save: pcb_nsaved > MAXWIN"));
	if ((i = pcb->pcb_nsaved) == 0)
		return (0);
	ausp = pcb->pcb_rwsp;
	rw = pcb->pcb_rw;
	error = 0;
	do {
		usp = *ausp;
		FUNC0(KTR_TRAP, "rwindow_save: usp=%#lx", usp);
		usp += SPOFF;
		if ((error = (usp & 0x7)) != 0)
			break;
		error = FUNC3(rw, (void *)usp, sizeof *rw);
		if (error)
			break;
		ausp++;
		rw++;
	} while (--i > 0);
	FUNC0(KTR_TRAP, "rwindow_save: error=%d", error);
	if (error == 0)
		pcb->pcb_nsaved = 0;
	return (error == 0 ? 0 : SIGILL);
}