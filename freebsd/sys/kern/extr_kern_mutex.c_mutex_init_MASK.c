#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int mtx_lock; } ;
struct TYPE_7__ {TYPE_2__ p_profmtx; TYPE_2__ p_itimmtx; TYPE_2__ p_statmtx; TYPE_2__ p_slock; TYPE_2__ p_mtx; } ;

/* Variables and functions */
 TYPE_2__ Giant ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 TYPE_2__ blocked_lock ; 
 TYPE_2__ devmtx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__ proc0 ; 

void
FUNC3(void)
{

	/* Setup turnstiles so that sleep mutexes work. */
	FUNC0();

	/*
	 * Initialize mutexes.
	 */
	FUNC1(&Giant, "Giant", NULL, MTX_DEF | MTX_RECURSE);
	FUNC1(&blocked_lock, "blocked lock", NULL, MTX_SPIN);
	blocked_lock.mtx_lock = 0xdeadc0de;	/* Always blocked. */
	FUNC1(&proc0.p_mtx, "process lock", NULL, MTX_DEF | MTX_DUPOK);
	FUNC1(&proc0.p_slock, "process slock", NULL, MTX_SPIN);
	FUNC1(&proc0.p_statmtx, "pstatl", NULL, MTX_SPIN);
	FUNC1(&proc0.p_itimmtx, "pitiml", NULL, MTX_SPIN);
	FUNC1(&proc0.p_profmtx, "pprofl", NULL, MTX_SPIN);
	FUNC1(&devmtx, "cdev", NULL, MTX_DEF);
	FUNC2(&Giant);
}