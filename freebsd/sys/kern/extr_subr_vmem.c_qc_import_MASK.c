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
typedef  scalar_t__ vmem_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  qc_size; int /*<<< orphan*/  qc_vmem; } ;
typedef  TYPE_1__ qcache_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  VMEM_ADDR_MAX ; 
 int /*<<< orphan*/  VMEM_ADDR_QCACHE_MIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(void *arg, void **store, int cnt, int domain, int flags)
{
	qcache_t *qc;
	vmem_addr_t addr;
	int i;

	FUNC0((flags & M_WAITOK) == 0, ("blocking allocation"));

	qc = arg;
	for (i = 0; i < cnt; i++) {
		if (FUNC1(qc->qc_vmem, qc->qc_size, 0, 0, 0,
		    VMEM_ADDR_QCACHE_MIN, VMEM_ADDR_MAX, flags, &addr) != 0)
			break;
		store[i] = (void *)addr;
	}
	return (i);
}