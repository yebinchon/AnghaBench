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
struct vmci_hashtable {scalar_t__ ref_count; int /*<<< orphan*/  lock; } ;
struct vmci_hash_entry {scalar_t__ ref_count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 int VMCI_SUCCESS ; 
 int VMCI_SUCCESS_ENTRY_DEAD ; 
 int FUNC1 (struct vmci_hashtable*,struct vmci_hashtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
	int result;

	FUNC0(table);
	FUNC0(entry);

	FUNC2(&table->lock);

	/* First unlink the entry. */
	result = FUNC1(table, entry);
	if (result != VMCI_SUCCESS) {
		/* We failed to find the entry. */
		goto done;
	}

	/* Decrement refcount and check if this is last reference. */
	entry->ref_count--;
	if (entry->ref_count == 0) {
		result = VMCI_SUCCESS_ENTRY_DEAD;
		goto done;
	}

done:
	FUNC3(&table->lock);

	return (result);
}