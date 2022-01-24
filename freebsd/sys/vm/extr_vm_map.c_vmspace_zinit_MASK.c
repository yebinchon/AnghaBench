#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pmap; } ;
struct vmspace {TYPE_1__ vm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmspace*) ; 

__attribute__((used)) static int
FUNC3(void *mem, int size, int flags)
{
	struct vmspace *vm;

	vm = (struct vmspace *)mem;

	vm->vm_map.pmap = NULL;
	(void)FUNC1(&vm->vm_map, sizeof(vm->vm_map), flags);
	FUNC0(FUNC2(vm));
	return (0);
}