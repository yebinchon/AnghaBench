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
struct vmci_subscription {int /*<<< orphan*/  destroy_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  event_release_cb ; 
 int /*<<< orphan*/  subscriber_list_item ; 
 int /*<<< orphan*/  subscriber_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vmci_subscription* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmci_subscription*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vmci_subscription*) ; 

__attribute__((used)) static struct vmci_subscription *
FUNC7(vmci_id sub_id)
{
	struct vmci_subscription *s;

	FUNC3(&subscriber_lock);
	s = FUNC1(sub_id);
	if (s != NULL) {
		FUNC2(s);
		FUNC4(s, subscriber_list_item);
	}
	FUNC5(&subscriber_lock);

	if (s != NULL) {
		FUNC6(&s->destroy_event, event_release_cb, s);
		FUNC0(&s->destroy_event);
	}

	return (s);
}