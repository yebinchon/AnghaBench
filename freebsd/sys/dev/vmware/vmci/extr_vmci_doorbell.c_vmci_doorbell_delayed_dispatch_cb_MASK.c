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
struct vmci_doorbell_entry {int /*<<< orphan*/  resource; int /*<<< orphan*/  client_data; int /*<<< orphan*/  (* notify_cb ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
	struct vmci_doorbell_entry *entry = (struct vmci_doorbell_entry *)data;

	FUNC0(data);

	entry->notify_cb(entry->client_data);

	FUNC2(&entry->resource);
}