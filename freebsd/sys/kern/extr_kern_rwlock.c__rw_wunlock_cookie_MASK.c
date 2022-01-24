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
struct rwlock {scalar_t__ rw_lock; int /*<<< orphan*/  rw_recurse; int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  LOP_EXCLUSIVE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 scalar_t__ RW_DESTROYED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (uintptr_t volatile*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rwlock*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rwlock*,uintptr_t,char const*,int) ; 
 scalar_t__ curthread ; 
 struct rwlock* FUNC7 (uintptr_t volatile*) ; 

void
FUNC8(volatile uintptr_t *c, const char *file, int line)
{
	struct rwlock *rw;

	rw = FUNC7(c);

	FUNC0(rw->rw_lock != RW_DESTROYED,
	    ("rw_wunlock() of destroyed rwlock @ %s:%d", file, line));
	FUNC4(c, RA_WLOCKED, file, line);
	FUNC3(&rw->lock_object, LOP_EXCLUSIVE, file, line);
	FUNC1("WUNLOCK", &rw->lock_object, 0, rw->rw_recurse, file,
	    line);

#ifdef LOCK_PROFILING
	_rw_wunlock_hard(rw, (uintptr_t)curthread, file, line);
#else
	FUNC5(rw, curthread, file, line);
#endif

	FUNC2(curthread);
}