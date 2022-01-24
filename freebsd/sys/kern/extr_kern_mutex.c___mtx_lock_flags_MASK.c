#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lo_name; } ;
struct mtx {scalar_t__ mtx_lock; TYPE_1__ lock_object; int /*<<< orphan*/  mtx_recurse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mtx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int,int /*<<< orphan*/ ,char const*,int) ; 
 int LOP_EXCLUSIVE ; 
 int LOP_NEWORDER ; 
 scalar_t__ MTX_DESTROYED ; 
 int MTX_RECURSE ; 
 uintptr_t MTX_UNOWNED ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*,uintptr_t,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mtx*,uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/  adaptive__acquire ; 
 scalar_t__ curthread ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  lock_class_mtx_sleep ; 
 struct mtx* FUNC11 (uintptr_t volatile*) ; 

void
FUNC12(volatile uintptr_t *c, int opts, const char *file, int line)
{
	struct mtx *m;
	uintptr_t tid, v;

	m = FUNC11(c);

	FUNC0(kdb_active != 0 || FUNC4() ||
	    !FUNC5(curthread),
	    ("mtx_lock() by idle thread %p on sleep mutex %s @ %s:%d",
	    curthread, m->lock_object.lo_name, file, line));
	FUNC0(m->mtx_lock != MTX_DESTROYED,
	    ("mtx_lock() of destroyed mutex @ %s:%d", file, line));
	FUNC0(FUNC2(&m->lock_object) == &lock_class_mtx_sleep,
	    ("mtx_lock() of spin mutex %s @ %s:%d", m->lock_object.lo_name,
	    file, line));
	FUNC7(&m->lock_object, (opts & ~MTX_RECURSE) |
	    LOP_NEWORDER | LOP_EXCLUSIVE, file, line, NULL);

	tid = (uintptr_t)curthread;
	v = MTX_UNOWNED;
	if (!FUNC10(m, &v, tid))
		FUNC9(m, v, opts, file, line);
	else
		FUNC1(adaptive__acquire,
		    m, 0, 0, file, line);
	FUNC3("LOCK", &m->lock_object, opts, m->mtx_recurse, file,
	    line);
	FUNC8(&m->lock_object, (opts & ~MTX_RECURSE) | LOP_EXCLUSIVE,
	    file, line);
	FUNC6(curthread);
}