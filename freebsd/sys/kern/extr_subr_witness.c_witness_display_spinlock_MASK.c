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
struct thread {scalar_t__ td_critnest; scalar_t__ td_oncpu; } ;
struct pcpu {int /*<<< orphan*/  pc_spinlocks; } ;
struct lock_object {int dummy; } ;
struct lock_instance {int dummy; } ;

/* Variables and functions */
 scalar_t__ NOCPU ; 
 struct lock_instance* FUNC0 (int /*<<< orphan*/ ,struct lock_object*) ; 
 struct pcpu* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct lock_instance*,int (*) (char const*)) ; 

void
FUNC3(struct lock_object *lock, struct thread *owner,
    int (*prnt)(const char *fmt, ...))
{
	struct lock_instance *instance;
	struct pcpu *pc;

	if (owner->td_critnest == 0 || owner->td_oncpu == NOCPU)
		return;
	pc = FUNC1(owner->td_oncpu);
	instance = FUNC0(pc->pc_spinlocks, lock);
	if (instance != NULL)
		FUNC2(instance, prnt);
}