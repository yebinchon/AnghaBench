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
struct vmspace {scalar_t__ vm_refcnt; } ;

/* Variables and functions */
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmspace*) ; 

void
FUNC4(struct vmspace *vm)
{

	FUNC0(WARN_GIANTOK | WARN_SLEEPOK, NULL,
	    "vmspace_free() called");

	if (vm->vm_refcnt == 0)
		FUNC2("vmspace_free: attempt to free already freed vmspace");

	if (FUNC1(&vm->vm_refcnt, -1) == 1)
		FUNC3(vm);
}