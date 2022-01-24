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
typedef  int pid_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(void) {
	pid_t pid;
	int i;

	FUNC4(NULL);
	if ((pid = FUNC5()) == -1) {
		FUNC7("fork()");
		return (1);
	}
	if (pid == 0) {
		FUNC3("/usr/bin/make", "make", "-C", "/var/yp/", (char*) NULL);
		FUNC1(1);
	}
	FUNC6(pid, &i, 0);
	if ((i = FUNC0(i)) != 0)
		FUNC2(i, "make exited with status %d", i);
	return (i);
}