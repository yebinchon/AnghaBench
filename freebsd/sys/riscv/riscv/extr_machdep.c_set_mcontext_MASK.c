#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int /*<<< orphan*/  tf_sstatus; int /*<<< orphan*/  tf_sepc; int /*<<< orphan*/  tf_gp; int /*<<< orphan*/  tf_sp; int /*<<< orphan*/  tf_ra; int /*<<< orphan*/  tf_a; int /*<<< orphan*/  tf_s; int /*<<< orphan*/  tf_t; } ;
struct thread {struct trapframe* td_frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  gp_sstatus; int /*<<< orphan*/  gp_sepc; int /*<<< orphan*/  gp_gp; int /*<<< orphan*/  gp_sp; int /*<<< orphan*/  gp_ra; int /*<<< orphan*/  gp_a; int /*<<< orphan*/  gp_s; int /*<<< orphan*/  gp_t; } ;
struct TYPE_5__ {TYPE_1__ mc_gpregs; } ;
typedef  TYPE_2__ mcontext_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct thread *td, mcontext_t *mcp)
{
	struct trapframe *tf;

	tf = td->td_frame;

	FUNC0(tf->tf_t, mcp->mc_gpregs.gp_t, sizeof(tf->tf_t));
	FUNC0(tf->tf_s, mcp->mc_gpregs.gp_s, sizeof(tf->tf_s));
	FUNC0(tf->tf_a, mcp->mc_gpregs.gp_a, sizeof(tf->tf_a));

	tf->tf_ra = mcp->mc_gpregs.gp_ra;
	tf->tf_sp = mcp->mc_gpregs.gp_sp;
	tf->tf_gp = mcp->mc_gpregs.gp_gp;
	tf->tf_sepc = mcp->mc_gpregs.gp_sepc;
	tf->tf_sstatus = mcp->mc_gpregs.gp_sstatus;

	return (0);
}