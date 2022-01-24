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
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_frame; } ;
struct reg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reg*,struct trapframe*,int) ; 

int
FUNC1(struct thread *td, struct reg *regs)
{
	struct trapframe *tf;

	tf = td->td_frame;
	FUNC0(regs, tf, sizeof(struct reg));

	return (0);
}