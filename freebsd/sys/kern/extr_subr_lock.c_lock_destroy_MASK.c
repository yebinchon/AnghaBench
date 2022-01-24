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
struct lock_object {int /*<<< orphan*/  lo_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct lock_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LO_INITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (struct lock_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct lock_object*) ; 

void
FUNC4(struct lock_object *lock)
{

	FUNC0(FUNC3(lock), ("lock %p is not initialized", lock));
	FUNC2(lock);
	FUNC1(lock, 0);
	lock->lo_flags &= ~LO_INITIALIZED;
}