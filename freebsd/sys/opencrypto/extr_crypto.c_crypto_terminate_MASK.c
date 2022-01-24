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
struct proc {int /*<<< orphan*/  p_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  crypto_drivers_mtx ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void
FUNC7(struct proc **pp, void *q)
{
	struct proc *p;

	FUNC5(&crypto_drivers_mtx, MA_OWNED);
	p = *pp;
	*pp = NULL;
	if (p) {
		FUNC6(q);
		FUNC2(p);		/* NB: insure we don't miss wakeup */
		FUNC1();	/* let crypto_finis progress */
		FUNC4(p, &p->p_mtx, PWAIT, "crypto_destroy", 0);
		FUNC3(p);
		FUNC0();
	}
}