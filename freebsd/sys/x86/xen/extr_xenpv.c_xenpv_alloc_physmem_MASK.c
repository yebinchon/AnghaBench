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
typedef  scalar_t__ vm_paddr_t ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOW_MEM_LIMIT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 scalar_t__ FUNC2 (struct resource*) ; 
 int FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC4(device_t dev, device_t child, int *res_id, size_t size)
{
	struct resource *res;
	vm_paddr_t phys_addr;
	int error;

	res = FUNC0(child, SYS_RES_MEMORY, res_id, LOW_MEM_LIMIT,
	    ~0, size, RF_ACTIVE);
	if (res == NULL)
		return (NULL);

	phys_addr = FUNC2(res);
	error = FUNC3(phys_addr, phys_addr + size,
	    VM_MEMATTR_DEFAULT);
	if (error) {
		FUNC1(child, SYS_RES_MEMORY, *res_id, res);
		return (NULL);
	}

	return (res);
}