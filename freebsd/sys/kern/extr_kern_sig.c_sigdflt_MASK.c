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
struct sigacts {int /*<<< orphan*/  ps_siginfo; int /*<<< orphan*/ * ps_sigact; int /*<<< orphan*/  ps_sigignore; int /*<<< orphan*/  ps_sigcatch; int /*<<< orphan*/  ps_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SIGCONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SIGPROP_IGNORE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct sigacts *ps, int sig)
{

	FUNC3(&ps->ps_mtx, MA_OWNED);
	FUNC1(ps->ps_sigcatch, sig);
	if ((FUNC4(sig) & SIGPROP_IGNORE) != 0 && sig != SIGCONT)
		FUNC0(ps->ps_sigignore, sig);
	ps->ps_sigact[FUNC2(sig)] = SIG_DFL;
	FUNC1(ps->ps_siginfo, sig);
}