#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ vm_nfreetags; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int /*<<< orphan*/  vmem_size_t ;
typedef  int /*<<< orphan*/  vmem_addr_t ;

/* Variables and functions */
 scalar_t__ BT_MAXALLOC ; 
 int /*<<< orphan*/  BT_TYPE_SPAN_STATIC ; 
 int ENOMEM ; 
 int VMEM_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(vmem_t *vm, vmem_addr_t addr, vmem_size_t size, int flags)
{
	int error;

	error = 0;
	flags &= VMEM_FLAGS;
	FUNC0(vm);
	if (vm->vm_nfreetags >= BT_MAXALLOC || FUNC2(vm, flags) == 0)
		FUNC3(vm, addr, size, BT_TYPE_SPAN_STATIC);
	else
		error = ENOMEM;
	FUNC1(vm);

	return (error);
}