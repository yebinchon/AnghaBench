#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct json_writer {int dummy; } ;
struct TYPE_3__ {char* szExeFile; scalar_t__ th32ParentProcessID; } ;
typedef  TYPE_1__ PROCESSENTRY32 ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int NR_PIDS_LIMIT ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,char*) ; 

__attribute__((used)) static void FUNC3(struct json_writer *jw, HANDLE hSnapshot)
{
	PROCESSENTRY32 pe32;
	DWORD pid;
	DWORD pid_list[NR_PIDS_LIMIT];
	int k, nr_pids = 0;

	pid = FUNC0();
	while (FUNC1(pid, hSnapshot, &pe32)) {
		/* Only report parents. Omit self from the JSON output. */
		if (nr_pids)
			FUNC2(jw, pe32.szExeFile);

		/* Check for cycle in snapshot. (Yes, it happened.) */
		for (k = 0; k < nr_pids; k++)
			if (pid == pid_list[k]) {
				FUNC2(jw, "(cycle)");
				return;
			}

		if (nr_pids == NR_PIDS_LIMIT) {
			FUNC2(jw, "(truncated)");
			return;
		}

		pid_list[nr_pids++] = pid;

		pid = pe32.th32ParentProcessID;
	}
}