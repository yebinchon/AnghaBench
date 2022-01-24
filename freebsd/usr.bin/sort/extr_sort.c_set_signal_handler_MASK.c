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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/ * sa_sigaction; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  sig_handler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct sigaction sa;

	FUNC0(&sa, 0, sizeof(sa));
	sa.sa_sigaction = &sig_handler;
	sa.sa_flags = SA_SIGINFO;

	if (FUNC2(SIGTERM, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGHUP, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGINT, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGQUIT, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGABRT, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGBUS, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGSEGV, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGUSR1, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
	if (FUNC2(SIGUSR2, &sa, NULL) < 0) {
		FUNC1("sigaction");
		return;
	}
}