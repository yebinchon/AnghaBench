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
struct mtx {scalar_t__ mtx_lock; int /*<<< orphan*/  mtx_recurse; TYPE_1__ lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*,int,int /*<<< orphan*/ ,char const*,int) ; 
 int LOP_EXCLUSIVE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ MTX_DESTROYED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  lock_class_mtx_spin ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*,int /*<<< orphan*/ ) ; 
 struct mtx* FUNC6 (uintptr_t volatile*) ; 

void
FUNC7(volatile uintptr_t *c, int opts, const char *file,
    int line)
{
	struct mtx *m;

	m = FUNC6(c);

	FUNC0(m->mtx_lock != MTX_DESTROYED,
	    ("mtx_unlock_spin() of destroyed mutex @ %s:%d", file, line));
	FUNC0(FUNC1(&m->lock_object) == &lock_class_mtx_spin,
	    ("mtx_unlock_spin() of sleep mutex %s @ %s:%d",
	    m->lock_object.lo_name, file, line));
	FUNC3(&m->lock_object, opts | LOP_EXCLUSIVE, file, line);
	FUNC2("UNLOCK", &m->lock_object, opts, m->mtx_recurse, file,
	    line);
	FUNC5(m, MA_OWNED);

	FUNC4(m);
}