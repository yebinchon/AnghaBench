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
struct conninfo {int /*<<< orphan*/  co_numchild; struct procinfo** co_proc; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct procinfo* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct conninfo *conn, pid_t pid)
{
	struct procinfo *proc;

	if (conn == NULL)
		return;

	if ((proc = FUNC1(pid, 1)) != NULL) {
		if (proc->pr_conn != NULL) {
			FUNC2(LOG_ERR,
			    "addchild_conn: child already on process list");
			FUNC0(EX_OSERR);
		}
		proc->pr_conn = conn;
	}

	conn->co_proc[conn->co_numchild++] = proc;
}