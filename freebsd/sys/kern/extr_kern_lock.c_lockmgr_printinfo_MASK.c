#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct thread {int td_tid; TYPE_2__* td_proc; } ;
struct TYPE_3__ {char* lo_name; } ;
struct lock {int lk_lock; TYPE_1__ lock_object; } ;
struct TYPE_4__ {int p_pid; char* p_comm; } ;

/* Variables and functions */
 uintptr_t LK_EXCLUSIVE_SPINNERS ; 
 uintptr_t LK_EXCLUSIVE_WAITERS ; 
 scalar_t__ LK_KERNPROC ; 
 int LK_SHARE ; 
 uintptr_t LK_SHARED_WAITERS ; 
 scalar_t__ FUNC0 (int) ; 
 int LK_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct lock const*) ; 
 struct thread* FUNC2 (struct lock const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4(const struct lock *lk)
{
	struct thread *td;
	uintptr_t x;

	if (lk->lk_lock == LK_UNLOCKED)
		FUNC3("lock type %s: UNLOCKED\n", lk->lock_object.lo_name);
	else if (lk->lk_lock & LK_SHARE)
		FUNC3("lock type %s: SHARED (count %ju)\n",
		    lk->lock_object.lo_name,
		    (uintmax_t)FUNC0(lk->lk_lock));
	else {
		td = FUNC2(lk);
		if (td == (struct thread *)LK_KERNPROC)
			FUNC3("lock type %s: EXCL by KERNPROC\n",
			    lk->lock_object.lo_name);
		else
			FUNC3("lock type %s: EXCL by thread %p "
			    "(pid %d, %s, tid %d)\n", lk->lock_object.lo_name,
			    td, td->td_proc->p_pid, td->td_proc->p_comm,
			    td->td_tid);
	}

	x = lk->lk_lock;
	if (x & LK_EXCLUSIVE_WAITERS)
		FUNC3(" with exclusive waiters pending\n");
	if (x & LK_SHARED_WAITERS)
		FUNC3(" with shared waiters pending\n");
	if (x & LK_EXCLUSIVE_SPINNERS)
		FUNC3(" with exclusive spinners pending\n");

	FUNC1(lk);
}