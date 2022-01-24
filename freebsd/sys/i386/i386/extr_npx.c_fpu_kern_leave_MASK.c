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
struct pcb {scalar_t__ pcb_save; int pcb_flags; } ;
struct fpu_kern_ctx {int flags; scalar_t__ prev; } ;

/* Variables and functions */
 int FPU_KERN_CTX_DUMMY ; 
 int FPU_KERN_CTX_INUSE ; 
 int FPU_KERN_CTX_NPXINITDONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCB_KERNNPX ; 
 int PCB_NPXINITDONE ; 
 int PCB_NPXUSERINITDONE ; 
 int /*<<< orphan*/  FUNC1 (struct pcb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 scalar_t__ FUNC5 (struct pcb*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(struct thread *td, struct fpu_kern_ctx *ctx)
{
	struct pcb *pcb;

	FUNC0((ctx->flags & FPU_KERN_CTX_INUSE) != 0,
	    ("leaving not inuse ctx"));
	ctx->flags &= ~FPU_KERN_CTX_INUSE;

	if (FUNC6(0) && (ctx->flags & FPU_KERN_CTX_DUMMY) != 0)
		return (0);
	pcb = td->td_pcb;
	FUNC3();
	if (curthread == FUNC2(fpcurthread))
		FUNC7();
	pcb->pcb_save = ctx->prev;
	if (pcb->pcb_save == FUNC5(pcb)) {
		if ((pcb->pcb_flags & PCB_NPXUSERINITDONE) != 0)
			pcb->pcb_flags |= PCB_NPXINITDONE;
		else
			pcb->pcb_flags &= ~PCB_NPXINITDONE;
		pcb->pcb_flags &= ~PCB_KERNNPX;
	} else {
		if ((ctx->flags & FPU_KERN_CTX_NPXINITDONE) != 0)
			pcb->pcb_flags |= PCB_NPXINITDONE;
		else
			pcb->pcb_flags &= ~PCB_NPXINITDONE;
		FUNC0(!FUNC1(pcb), ("unpaired fpu_kern_leave"));
	}
	FUNC4();
	return (0);
}