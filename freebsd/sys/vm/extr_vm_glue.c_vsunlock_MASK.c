#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {size_t td_vslock_sz; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_MAP_WIRE_NOHOLES ; 
 int VM_MAP_WIRE_SYSTEM ; 
 TYPE_3__* curproc ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(void *addr, size_t len)
{

	/* Rely on the parameter sanity checks performed by vslock(). */
	FUNC0(curthread->td_vslock_sz >= len);
	curthread->td_vslock_sz -= len;
	(void)FUNC3(&curproc->p_vmspace->vm_map,
	    FUNC2((vm_offset_t)addr), FUNC1((vm_offset_t)addr + len),
	    VM_MAP_WIRE_SYSTEM | VM_MAP_WIRE_NOHOLES);
}