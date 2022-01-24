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

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  WNOHANG ; 
 int child_gone ; 
 scalar_t__ errno ; 
 int pid ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int signo)
{
	(void)signo;
	for (;;) {
		int rv = FUNC0(-1, NULL, WNOHANG);
		if (pid == rv) {
			child_gone = 1;
			break;
		} else if (rv == -1 && errno != EINTR) {
			FUNC1("waitpid");
			return;
		}
	}
}