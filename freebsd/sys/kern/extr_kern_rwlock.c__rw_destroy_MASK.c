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
struct rwlock {scalar_t__ rw_lock; scalar_t__ rw_recurse; int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ RW_DESTROYED ; 
 scalar_t__ RW_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rwlock* FUNC2 (uintptr_t volatile*) ; 

void
FUNC3(volatile uintptr_t *c)
{
	struct rwlock *rw;

	rw = FUNC2(c);

	FUNC0(rw->rw_lock == RW_UNLOCKED, ("rw lock %p not unlocked", rw));
	FUNC0(rw->rw_recurse == 0, ("rw lock %p still recursed", rw));
	rw->rw_lock = RW_DESTROYED;
	FUNC1(&rw->lock_object);
}