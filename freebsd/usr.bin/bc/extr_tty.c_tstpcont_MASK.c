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
 int SIGCONT ; 
 int SIGTSTP ; 
 void FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,void (*) (int)) ; 
 int /*<<< orphan*/  ttyedit ; 
 int /*<<< orphan*/  ttysaved ; 

void
FUNC5(int sig)
{
	int save_errno = errno;

	if (sig == SIGTSTP) {
		FUNC4(SIGCONT, tstpcont);
		FUNC1(&ttyedit);
		FUNC3(&ttysaved);		
	} else {
		FUNC4(SIGTSTP, tstpcont);
		FUNC3(&ttyedit);		
	}
	FUNC4(sig, SIG_DFL);
	FUNC2(0, sig);
	errno = save_errno;
}