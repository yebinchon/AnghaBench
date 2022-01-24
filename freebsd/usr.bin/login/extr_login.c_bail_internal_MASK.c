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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * pwd ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(int sec, int eval, int signo)
{
	struct sigaction sa;

	FUNC2();
#ifdef USE_BSM_AUDIT
	if (pwd != NULL)
		audit_logout();
#endif
	(void)FUNC8(sec);
	if (signo == 0)
		FUNC1(eval);
	else {
		sa.sa_handler = SIG_DFL;
		sa.sa_flags = 0;
		(void)FUNC6(&sa.sa_mask);
		(void)FUNC4(signo, &sa, NULL);
		(void)FUNC5(&sa.sa_mask, signo);
		(void)FUNC7(SIG_UNBLOCK, &sa.sa_mask, NULL);
		FUNC3(signo);
		FUNC1(128 + signo);
	}
}