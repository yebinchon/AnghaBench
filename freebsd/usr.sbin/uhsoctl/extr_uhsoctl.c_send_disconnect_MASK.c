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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* PIDFILE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(const char *ifnam)
{
	char pidfile[128];
	FILE *fp;
	pid_t pid;
	int n;

	FUNC5(pidfile, 127, PIDFILE, ifnam);
	fp = FUNC1(pidfile, "r");
	if (fp == NULL) {
		FUNC6("Cannot open %s", pidfile);
		return;
	}

	n = FUNC3(fp, "%d", &pid);
	FUNC0(fp);
	if (n != 1) {
		FUNC7("unable to read daemon pid");
		return;
	}
#ifdef DEBUG
	fprintf(stderr, "Sending SIGTERM to %d\n", pid);
#endif
	FUNC4(pid, SIGTERM);
}