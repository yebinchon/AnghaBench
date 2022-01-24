#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmci_doorbell_entry {int idx; int /*<<< orphan*/  resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_doorbell_entry*) ; 
 int /*<<< orphan*/  idx_list_item ; 
 int last_notify_idx_released ; 
 int max_notify_idx ; 
 int /*<<< orphan*/  notify_idx_count ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ vmci_doorbell_it ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_doorbell_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct vmci_doorbell_entry *entry)
{
	FUNC0(entry);

	FUNC2(&vmci_doorbell_it.lock);

	FUNC3(entry, idx_list_item);

	notify_idx_count--;
	if (entry->idx == max_notify_idx - 1) {
		/*
		 * If we delete an entry with the maximum known notification
		 * index, we take the opportunity to prune the current max. As
		 * there might be other unused indices immediately below, we
		 * lower the maximum until we hit an index in use
		 */

		while (max_notify_idx > 0 &&
		    !FUNC1(max_notify_idx - 1))
			max_notify_idx--;
	}
	last_notify_idx_released = entry->idx;

	FUNC4(&vmci_doorbell_it.lock);

	FUNC5(&entry->resource);
}