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
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,char const*,char const*,int) ; 

__attribute__((used)) static void
FUNC5(pid_t pid, int status, const char *name)
{
	int code;
	char buf[256];
	const char *reason;

	errno = 0; /* Keep strerror() stuff out of logerror messages. */
	if (FUNC1(status)) {
		reason = "due to signal";
		code = FUNC2(status);
	} else {
		reason = "with status";
		code = FUNC0(status);
		if (code == 0)
			return;
	}
	(void)FUNC4(buf, sizeof buf,
		       "Logging subprocess %d (%s) exited %s %d.",
		       pid, name, reason, code);
	FUNC3(buf);
}