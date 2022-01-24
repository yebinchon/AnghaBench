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
struct vmci_subscription {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  subscriber_lock ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *client_data)
{
	struct vmci_subscription *sub = (struct vmci_subscription *)client_data;

	FUNC0(sub);

	FUNC2(&subscriber_lock);
	FUNC1(sub);
	FUNC3(&subscriber_lock);

	return (0);
}