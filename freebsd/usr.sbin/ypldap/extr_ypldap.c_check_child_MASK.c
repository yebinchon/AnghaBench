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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC5(pid_t pid, const char *pname)
{
	int	status;

	if (FUNC4(pid, &status, WNOHANG) > 0) {
		if (FUNC0(status)) {
			FUNC3("check_child: lost child %s exited", pname);
			return (1);
		}
		if (FUNC1(status)) {
			FUNC3("check_child: lost child %s terminated; "
			    "signal %d", pname, FUNC2(status));
			return (1);
		}
	}
	return (0);
}