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
typedef  int /*<<< orphan*/  vmci_id ;
struct vmci_subscription {int dummy; } ;

/* Variables and functions */
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_SUCCESS ; 
 struct vmci_subscription* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_subscription*,int) ; 

int
FUNC2(vmci_id sub_id)
{
	struct vmci_subscription *s;

	/*
	 * Return subscription. At this point we know noone else is accessing
	 * the subscription so we can free it.
	 */
	s = FUNC0(sub_id);
	if (s == NULL)
		return (VMCI_ERROR_NOT_FOUND);
	FUNC1(s, sizeof(*s));

	return (VMCI_SUCCESS);
}