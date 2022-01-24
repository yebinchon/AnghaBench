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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vmem {int dummy; } ;

/* Variables and functions */
 struct vmem* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_object ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(vm_offset_t addr, vm_size_t size)
{
	struct vmem *arena;

	size = FUNC1(size);
	arena = FUNC0(kernel_object, addr, size);
	if (arena != NULL)
		FUNC2(arena, addr, size);
}