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
typedef  int vmem_size_t ;
typedef  int /*<<< orphan*/  vmem_addr_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KVA_QUANTUM ; 
 int /*<<< orphan*/  VMEM_ADDR_MAX ; 
 int /*<<< orphan*/  VMEM_ADDR_MIN ; 
 int FUNC1 (void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(void *arena, vmem_size_t size, int flags, vmem_addr_t *addrp)
{

	FUNC0((size % KVA_QUANTUM) == 0,
	    ("kva_import_domain: Size %jd is not a multiple of %d",
	    (intmax_t)size, (int)KVA_QUANTUM));
	return (FUNC1(arena, size, KVA_QUANTUM, 0, 0, VMEM_ADDR_MIN,
	    VMEM_ADDR_MAX, flags, addrp));
}