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
struct vmci_hash_entry {struct vmci_hash_entry* next; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VMCI_ERROR_NOT_FOUND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VMCI_SUCCESS ; 

__attribute__((used)) static int
FUNC3(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
	int result;
	struct vmci_hash_entry *prev, *cur;
	int idx;

	idx = FUNC2(entry->handle, table->size);

	prev = NULL;
	cur = table->entries[idx];
	while (true) {
		if (cur == NULL) {
			result = VMCI_ERROR_NOT_FOUND;
			break;
		}
		if (FUNC1(cur->handle, entry->handle)) {
			FUNC0(cur == entry);

			/* Remove entry and break. */
			if (prev)
				prev->next = cur->next;
			else
				table->entries[idx] = cur->next;
			cur->next = NULL;
			result = VMCI_SUCCESS;
			break;
		}
		prev = cur;
		cur = cur->next;
	}
	return (result);
}