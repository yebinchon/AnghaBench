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
struct vmci_hashtable {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref_count; } ;
struct vmci_hash_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct vmci_hashtable *table,
    struct vmci_hash_entry *entry)
{

	FUNC0(table);
	FUNC0(entry);

	FUNC1(&table->lock);
	entry->ref_count++;
	FUNC2(&table->lock);
}