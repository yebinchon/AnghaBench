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
struct trapframe {int /*<<< orphan*/  tf_sp; int /*<<< orphan*/  tf_tpc; } ;
struct pcb {int /*<<< orphan*/  pcb_sp; int /*<<< orphan*/  pcb_pc; } ;

/* Variables and functions */

void
FUNC0(struct trapframe *tf, struct pcb *pcb)
{

	pcb->pcb_pc = tf->tf_tpc;
	pcb->pcb_sp = tf->tf_sp;
}