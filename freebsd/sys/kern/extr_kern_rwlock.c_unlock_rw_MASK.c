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
struct rwlock {int rw_lock; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 int LA_NOTRECURSED ; 
 int RA_LOCKED ; 
 int RW_LOCK_READ ; 
 int /*<<< orphan*/  FUNC0 (struct rwlock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct rwlock*) ; 

uintptr_t
FUNC3(struct lock_object *lock)
{
	struct rwlock *rw;

	rw = (struct rwlock *)lock;
	FUNC0(rw, RA_LOCKED | LA_NOTRECURSED);
	if (rw->rw_lock & RW_LOCK_READ) {
		FUNC1(rw);
		return (1);
	} else {
		FUNC2(rw);
		return (0);
	}
}