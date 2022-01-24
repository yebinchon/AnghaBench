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
struct vmci_resource {int /*<<< orphan*/  hash_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_resource*) ; 
 int /*<<< orphan*/  resource_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct vmci_resource *resource)
{

	FUNC0(resource);
	FUNC1(resource_table, &resource->hash_entry);
}