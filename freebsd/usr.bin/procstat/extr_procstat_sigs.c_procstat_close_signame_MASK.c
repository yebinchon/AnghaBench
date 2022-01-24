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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int PS_OPT_SIGNUM ; 
 int procstat_opts ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int sys_nsig ; 
 int /*<<< orphan*/ * sys_signame ; 
 char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int sig)
{
	char name[12];
	int i;

	if ((procstat_opts & PS_OPT_SIGNUM) == 0 && sig < sys_nsig) {
		FUNC1(name, sys_signame[sig], sizeof(name));
		for (i = 0; name[i] != 0; i++)
			name[i] = FUNC2(name[i]);
		FUNC3(name);
	} else
		FUNC0(name, 12, "%d", sig);
		FUNC3(name);
}