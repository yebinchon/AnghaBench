#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int tf_eflags; int tf_cs; } ;
struct segment_descriptor {scalar_t__ sd_def32; } ;
struct proc_ldt {struct segment_descriptor ldt_sd; } ;
struct TYPE_10__ {TYPE_2__* td_proc; } ;
struct TYPE_9__ {struct segment_descriptor sd; } ;
struct TYPE_8__ {struct segment_descriptor sd; } ;
struct TYPE_6__ {struct proc_ldt* md_ldt; } ;
struct TYPE_7__ {TYPE_1__ p_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCODE_SEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 size_t NGDT ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int PSL_VM ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_5__* curthread ; 
 TYPE_4__* gdt ; 
 TYPE_3__* ldt ; 

int
FUNC4(struct trapframe *tfp)
{
	struct proc_ldt *plp;
	struct segment_descriptor *sdp;
	int sel;

	if (tfp == NULL)
	    return (32);
	if (tfp->tf_eflags & PSL_VM)
	    return (16);
	sel = tfp->tf_cs & 0xffff;
	if (sel == FUNC0(GCODE_SEL, SEL_KPL))
	    return (32);
	/* Rare cases follow.  User mode cases are currently unreachable. */
	if (FUNC2(sel)) {
	    plp = curthread->td_proc->p_md.md_ldt;
	    sdp = (plp != NULL) ? &plp->ldt_sd : &ldt[0].sd;
	} else {
	    sdp = &gdt[FUNC3(cpuid) * NGDT].sd;
	}
	return (sdp[FUNC1(sel)].sd_def32 == 0 ? 16 : 32);
}