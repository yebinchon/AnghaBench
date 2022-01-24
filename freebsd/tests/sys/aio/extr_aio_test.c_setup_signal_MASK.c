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
struct sigevent {int /*<<< orphan*/  sigev_signo; int /*<<< orphan*/  sigev_notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGEV_SIGNAL ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  completions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigusr1_handler ; 

__attribute__((used)) static struct sigevent*
FUNC4(void)
{
	static struct sigevent sev;

	FUNC1(0, FUNC2(&completions, false, 0));
	sev.sigev_notify = SIGEV_SIGNAL;
	sev.sigev_signo = SIGUSR1;
	FUNC0(SIG_ERR != FUNC3(SIGUSR1, sigusr1_handler));
	return (&sev);
}