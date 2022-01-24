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
struct reg32 {int /*<<< orphan*/ * r_regs; } ;
struct reg {int /*<<< orphan*/ * r_regs; } ;

/* Variables and functions */
 unsigned int NUMSAVEREGS ; 
 int FUNC0 (struct thread*,struct reg*) ; 

int
FUNC1(struct thread *td, struct reg32 *regs)
{
	struct reg r;
	unsigned i;

	for (i = 0; i < NUMSAVEREGS; i++)
		r.r_regs[i] = regs->r_regs[i];

	return (FUNC0(td, &r));
}