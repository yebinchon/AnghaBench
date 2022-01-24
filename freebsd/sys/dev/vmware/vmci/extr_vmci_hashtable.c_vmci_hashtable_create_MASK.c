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
struct vmci_hashtable {int size; struct vmci_hashtable* entries; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_MEMORY_NORMAL ; 
 scalar_t__ VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_hashtable*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

struct vmci_hashtable *
FUNC4(int size)
{
	struct vmci_hashtable *table;

	table = FUNC1(sizeof(*table),
	    VMCI_MEMORY_NORMAL);
	if (table == NULL)
		return (NULL);
	FUNC0(table, 0, sizeof(*table));

	table->entries = FUNC1(sizeof(*table->entries) * size,
	    VMCI_MEMORY_NORMAL);
	if (table->entries == NULL) {
		FUNC2(table, sizeof(*table));
		return (NULL);
	}
	FUNC0(table->entries, 0, sizeof(*table->entries) * size);
	table->size = size;
	if (FUNC3(&table->lock, "VMCI Hashtable lock") <
	    VMCI_SUCCESS) {
		FUNC2(table->entries, sizeof(*table->entries) * size);
		FUNC2(table, sizeof(*table));
		return (NULL);
	}

	return (table);
}