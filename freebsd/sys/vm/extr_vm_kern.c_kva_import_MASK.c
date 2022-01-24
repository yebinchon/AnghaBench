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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_SUCCESS ; 
 int KVA_QUANTUM ; 
 int /*<<< orphan*/  MAP_NOFAULT ; 
 int /*<<< orphan*/  VMFS_SUPER_SPACE ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  kernel_map ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *unused, vmem_size_t size, int flags, vmem_addr_t *addrp)
{
	vm_offset_t addr;
	int result;

	FUNC0((size % KVA_QUANTUM) == 0,
	    ("kva_import: Size %jd is not a multiple of %d",
	    (intmax_t)size, (int)KVA_QUANTUM));
	addr = FUNC2(kernel_map);
	result = FUNC1(kernel_map, NULL, 0, &addr, size, 0,
	    VMFS_SUPER_SPACE, VM_PROT_ALL, VM_PROT_ALL, MAP_NOFAULT);
	if (result != KERN_SUCCESS)
                return (ENOMEM);

	*addrp = addr;

	return (0);
}