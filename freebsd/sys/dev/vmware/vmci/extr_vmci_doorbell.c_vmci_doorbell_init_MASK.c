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
typedef  size_t uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vmci_doorbell_it ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	uint32_t bucket;

	for (bucket = 0; bucket < FUNC0(vmci_doorbell_it.entries);
	    ++bucket)
		FUNC2(&vmci_doorbell_it.entries[bucket]);

	return (FUNC1(&vmci_doorbell_it.lock,
	    "VMCI Doorbell index table lock"));
}