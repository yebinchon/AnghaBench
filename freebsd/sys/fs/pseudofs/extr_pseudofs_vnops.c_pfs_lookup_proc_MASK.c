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
struct proc {int p_flag; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 struct proc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(pid_t pid, struct proc **p)
{
	struct proc *proc;

	proc = FUNC2(pid);
	if (proc == NULL)
		return (0);
	if ((proc->p_flag & P_WEXIT) != 0) {
		FUNC0(proc);
		return (0);
	}
	FUNC1(proc);
	FUNC0(proc);
	*p = proc;
	return (1);
}