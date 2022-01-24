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
struct pinfo_t {int pid; struct pinfo_t* next; int /*<<< orphan*/  proc; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  LPDWORD ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int PROCESS_QUERY_INFORMATION ; 
 int SYNCHRONIZE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int WNOHANG ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (struct pinfo_t*) ; 
 struct pinfo_t* pinfo ; 
 int /*<<< orphan*/  pinfo_cs ; 

pid_t FUNC7(pid_t pid, int *status, int options)
{
	HANDLE h = FUNC4(SYNCHRONIZE | PROCESS_QUERY_INFORMATION,
	    FALSE, pid);
	if (!h) {
		errno = ECHILD;
		return -1;
	}

	if (pid > 0 && options & WNOHANG) {
		if (WAIT_OBJECT_0 != FUNC5(h, 0)) {
			FUNC0(h);
			return 0;
		}
		options &= ~WNOHANG;
	}

	if (options == 0) {
		struct pinfo_t **ppinfo;
		if (FUNC5(h, INFINITE) != WAIT_OBJECT_0) {
			FUNC0(h);
			return 0;
		}

		if (status)
			FUNC2(h, (LPDWORD)status);

		FUNC1(&pinfo_cs);

		ppinfo = &pinfo;
		while (*ppinfo) {
			struct pinfo_t *info = *ppinfo;
			if (info->pid == pid) {
				FUNC0(info->proc);
				*ppinfo = info->next;
				FUNC6(info);
				break;
			}
			ppinfo = &info->next;
		}

		FUNC3(&pinfo_cs);

		FUNC0(h);
		return pid;
	}
	FUNC0(h);

	errno = EINVAL;
	return -1;
}