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

/* Variables and functions */
 int VMCI_EVENT_MAX ; 
 int /*<<< orphan*/ * subscriber_array ; 
 int /*<<< orphan*/  subscriber_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(void)
{
	int i;

	for (i = 0; i < VMCI_EVENT_MAX; i++)
		FUNC1(&subscriber_array[i]);

	return (FUNC0(&subscriber_lock, "VMCI Event subscriber lock"));
}