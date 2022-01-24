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
struct vmci_hashtable {int size; int /*<<< orphan*/  lock; struct vmci_hashtable* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_hashtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_hashtable*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct vmci_hashtable *table)
{

	FUNC0(table);

	FUNC3(&table->lock);
	FUNC2(table->entries, sizeof(*table->entries) *
	    table->size);
	table->entries = NULL;
	FUNC4(&table->lock);
	FUNC1(&table->lock);
	FUNC2(table, sizeof(*table));
}