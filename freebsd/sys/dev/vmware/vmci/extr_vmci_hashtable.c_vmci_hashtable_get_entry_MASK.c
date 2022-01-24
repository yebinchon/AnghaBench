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
struct vmci_hashtable {int /*<<< orphan*/  lock; } ;
struct vmci_hash_entry {int dummy; } ;
struct vmci_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 scalar_t__ FUNC1 (struct vmci_handle,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vmci_hash_entry* FUNC3 (struct vmci_hashtable*,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct vmci_hash_entry *
FUNC5(struct vmci_hashtable *table,
    struct vmci_handle handle)
{
	struct vmci_hash_entry *entry;

	if (FUNC1(handle, VMCI_INVALID_HANDLE))
		return (NULL);

	FUNC0(table);

	FUNC2(&table->lock);
	entry = FUNC3(table, handle);
	FUNC4(&table->lock);

	return (entry);
}