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
typedef  int u_int ;
struct lock_object {int dummy; } ;
struct lock_class {int /*<<< orphan*/  (* lc_unlock ) (struct lock_object*) ;} ;

/* Variables and functions */
 int LK_INTERLOCK ; 
 struct lock_class* FUNC0 (struct lock_object*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lock_object*) ; 

__attribute__((used)) static void
FUNC4(u_int flags, struct lock_object *ilk, int wakeup_swapper)
{
	struct lock_class *class;

	if (flags & LK_INTERLOCK) {
		class = FUNC0(ilk);
		class->lc_unlock(ilk);
	}

	if (FUNC1(wakeup_swapper))
		FUNC2();
}