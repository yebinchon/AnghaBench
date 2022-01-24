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
struct vmci_hashtable {struct vmci_hash_entry** entries; int /*<<< orphan*/  size; } ;
struct vmci_handle {int dummy; } ;
struct vmci_hash_entry {struct vmci_hash_entry* next; struct vmci_handle handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 scalar_t__ FUNC1 (struct vmci_handle) ; 
 scalar_t__ FUNC2 (struct vmci_handle) ; 
 int FUNC3 (struct vmci_handle,int /*<<< orphan*/ ) ; 
 scalar_t__ VMCI_INVALID_ID ; 

__attribute__((used)) static bool
FUNC4(struct vmci_hashtable *table,
    struct vmci_handle handle)

{
	struct vmci_hash_entry *entry;
	int idx;

	FUNC0(table);

	idx = FUNC3(handle, table->size);

	entry = table->entries[idx];
	while (entry) {
		if (FUNC2(entry->handle) ==
		    FUNC2(handle))
			if ((FUNC1(entry->handle) ==
			    FUNC1(handle)) ||
			    (VMCI_INVALID_ID == FUNC1(handle)) ||
			    (VMCI_INVALID_ID == FUNC1(entry->handle)))
				return (true);
		entry = entry->next;
	}

	return (false);
}