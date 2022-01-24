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
struct thread {int dummy; } ;
struct pcb {scalar_t__* pcb_context; } ;
typedef  scalar_t__ register_t ;

/* Variables and functions */
 size_t PCB_REG_PC ; 
 size_t PCB_REG_RA ; 
 size_t PCB_REG_SP ; 
 struct pcb* FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 

int
FUNC2(struct thread *thr, int count)
{
	register_t pc, ra, sp;
	struct pcb *ctx;

	ctx = FUNC0(thr);
	sp = (register_t)ctx->pcb_context[PCB_REG_SP];
	pc = (register_t)ctx->pcb_context[PCB_REG_PC];
	ra = (register_t)ctx->pcb_context[PCB_REG_RA];
	FUNC1(pc, sp, ra);

	return (0);
}