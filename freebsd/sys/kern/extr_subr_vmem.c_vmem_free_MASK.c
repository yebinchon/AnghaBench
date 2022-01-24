#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int vm_qcache_max; int vm_quantum_shift; TYPE_2__* vm_qcache; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int vmem_size_t ;
typedef  scalar_t__ vmem_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  qc_cache; } ;
typedef  TYPE_2__ qcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VMEM_ADDR_QCACHE_MIN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int) ; 

void
FUNC4(vmem_t *vm, vmem_addr_t addr, vmem_size_t size)
{
	qcache_t *qc;
	FUNC0(size > 0);

	if (size <= vm->vm_qcache_max &&
	    FUNC1(addr >= VMEM_ADDR_QCACHE_MIN)) {
		qc = &vm->vm_qcache[(size - 1) >> vm->vm_quantum_shift];
		FUNC2(qc->qc_cache, (void *)addr);
	} else
		FUNC3(vm, addr, size);
}