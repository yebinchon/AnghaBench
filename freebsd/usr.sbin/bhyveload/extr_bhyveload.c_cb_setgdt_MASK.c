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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSP ; 
 int /*<<< orphan*/  USERBOOT_EXIT_QUIT ; 
 int /*<<< orphan*/  VM_REG_GUEST_GDTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  gdtbase ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg, uint64_t base, size_t size)
{
	int error;

	error = FUNC2(ctx, BSP, VM_REG_GUEST_GDTR, base, size - 1, 0);
	if (error != 0) {
		FUNC1("vm_set_desc(gdt)");
		FUNC0(NULL, USERBOOT_EXIT_QUIT);
	}

	gdtbase = base;
}