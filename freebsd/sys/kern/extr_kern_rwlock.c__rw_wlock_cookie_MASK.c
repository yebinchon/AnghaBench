#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lo_name; } ;
struct rwlock {scalar_t__ rw_lock; TYPE_1__ lock_object; int /*<<< orphan*/  rw_recurse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rwlock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKSTAT_WRITER ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int LOP_EXCLUSIVE ; 
 int LOP_NEWORDER ; 
 scalar_t__ RW_DESTROYED ; 
 uintptr_t RW_UNLOCKED ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rwlock*,uintptr_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rwlock*,uintptr_t*,uintptr_t) ; 
 scalar_t__ curthread ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  rw__acquire ; 
 struct rwlock* FUNC10 (uintptr_t volatile*) ; 

void
FUNC11(volatile uintptr_t *c, const char *file, int line)
{
	struct rwlock *rw;
	uintptr_t tid, v;

	rw = FUNC10(c);

	FUNC0(kdb_active != 0 || FUNC3() ||
	    !FUNC4(curthread),
	    ("rw_wlock() by idle thread %p on rwlock %s @ %s:%d",
	    curthread, rw->lock_object.lo_name, file, line));
	FUNC0(rw->rw_lock != RW_DESTROYED,
	    ("rw_wlock() of destroyed rwlock @ %s:%d", file, line));
	FUNC6(&rw->lock_object, LOP_NEWORDER | LOP_EXCLUSIVE, file,
	    line, NULL);
	tid = (uintptr_t)curthread;
	v = RW_UNLOCKED;
	if (!FUNC9(rw, &v, tid))
		FUNC8(rw, v, file, line);
	else
		FUNC1(rw__acquire, rw,
		    0, 0, file, line, LOCKSTAT_WRITER);

	FUNC2("WLOCK", &rw->lock_object, 0, rw->rw_recurse, file, line);
	FUNC7(&rw->lock_object, LOP_EXCLUSIVE, file, line);
	FUNC5(curthread);
}