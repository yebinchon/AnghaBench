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
typedef  scalar_t__ vmci_id ;
struct vmci_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ VMCI_INVALID_ID ; 
 struct vmci_handle FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ VMCI_RESERVED_RESOURCE_ID_MAX ; 
 scalar_t__ resource_id ; 
 int /*<<< orphan*/  resource_id_lock ; 
 int /*<<< orphan*/  resource_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

vmci_id
FUNC6(vmci_id context_id)
{
	vmci_id current_rid;
	vmci_id old_rid;
	bool found_rid;

	old_rid = resource_id;
	found_rid = false;

	/*
	 * Generate a unique resource ID. Keep on trying until we wrap around
	 * in the RID space.
	 */
	FUNC0(old_rid > VMCI_RESERVED_RESOURCE_ID_MAX);

	do {
		struct vmci_handle handle;

		FUNC3(&resource_id_lock);
		current_rid = resource_id;
		handle = FUNC2(context_id, current_rid);
		resource_id++;
		if (FUNC1(resource_id == VMCI_INVALID_ID)) {
			/* Skip the reserved rids. */
			resource_id = VMCI_RESERVED_RESOURCE_ID_MAX + 1;
		}
		FUNC5(&resource_id_lock);
		found_rid = !FUNC4(resource_table,
		    handle);
	} while (!found_rid && resource_id != old_rid);

	if (FUNC1(!found_rid))
		return (VMCI_INVALID_ID);
	else
		return (current_rid);
}