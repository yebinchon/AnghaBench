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
struct procinfo {struct conninfo* pr_conn; } ;
struct conninfo {int co_numchild; struct procinfo** co_proc; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct conninfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct procinfo*) ; 
 struct procinfo* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(pid_t pid)
{
	struct procinfo *proc;
	struct conninfo *conn;
	int i;

	if ((proc = FUNC2(pid, 0)) == NULL)
		return;
	if ((conn = proc->pr_conn) == NULL)
		return;
	for (i = 0; i < conn->co_numchild; ++i)
		if (conn->co_proc[i] == proc) {
			conn->co_proc[i] = conn->co_proc[--conn->co_numchild];
			break;
		}
	FUNC1(proc);
	FUNC0(conn);
}