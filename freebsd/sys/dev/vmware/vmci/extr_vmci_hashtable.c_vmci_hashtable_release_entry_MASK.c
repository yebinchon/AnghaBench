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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmci_hashtable*,struct vmci_hash_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{
	int result;

	FUNC0(table);
	FUNC1(&table->lock);
	result = FUNC2(table, entry);
	FUNC3(&table->lock);

	return (result);
}