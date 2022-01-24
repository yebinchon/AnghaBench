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
struct vmci_resource {int /*<<< orphan*/  hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_resource*) ; 
 int VMCI_SUCCESS_ENTRY_DEAD ; 
 int /*<<< orphan*/  resource_table ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_resource*) ; 

int
FUNC3(struct vmci_resource *resource)
{
	int result;

	FUNC0(resource);

	result = FUNC1(resource_table,
	    &resource->hash_entry);
	if (result == VMCI_SUCCESS_ENTRY_DEAD)
		FUNC2(resource);

	/*
	 * We propagate the information back to caller in case it wants to know
	 * whether entry was freed.
	 */
	return (result);
}