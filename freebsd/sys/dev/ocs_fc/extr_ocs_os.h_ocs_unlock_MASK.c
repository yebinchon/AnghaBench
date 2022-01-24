#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ocs_lock_t ;

/* Variables and functions */
 int MA_NOTRECURSED ; 
 int MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void
FUNC4(ocs_lock_t *lock)
{

	if (FUNC1(&(lock)->lock)) {
		FUNC0(&(lock)->lock, MA_OWNED | MA_NOTRECURSED);
		FUNC2(&(lock)->lock);
	} else {
		FUNC3("XXX trying to unlock with un-initialized mtx!?!?\n");
	}
}