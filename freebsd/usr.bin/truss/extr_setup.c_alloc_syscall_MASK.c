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
typedef  size_t u_int ;
struct TYPE_2__ {scalar_t__ number; scalar_t__ nargs; int /*<<< orphan*/  args; int /*<<< orphan*/ ** s_args; int /*<<< orphan*/ * sc; } ;
struct threadinfo {int in_syscall; TYPE_1__ cs; } ;
struct ptrace_lwpinfo {scalar_t__ pl_syscall_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC3(struct threadinfo *t, struct ptrace_lwpinfo *pl)
{
	u_int i;

	FUNC0(t->in_syscall == 0);
	FUNC0(t->cs.number == 0);
	FUNC0(t->cs.sc == NULL);
	FUNC0(t->cs.nargs == 0);
	for (i = 0; i < FUNC2(t->cs.s_args); i++)
		FUNC0(t->cs.s_args[i] == NULL);
	FUNC1(t->cs.args, 0, sizeof(t->cs.args));
	t->cs.number = pl->pl_syscall_code;
	t->in_syscall = 1;
}