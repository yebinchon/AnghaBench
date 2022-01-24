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
struct vmci_subscription {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  id; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,struct vmci_event_data*,int /*<<< orphan*/ ) ;scalar_t__ event_payload; struct vmci_subscription* sub; } ;
struct vmci_event_data {int dummy; } ;
struct vmci_delayed_event_info {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  id; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,struct vmci_event_data*,int /*<<< orphan*/ ) ;scalar_t__ event_payload; struct vmci_delayed_event_info* sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct vmci_event_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  subscriber_lock ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_subscription*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
	struct vmci_delayed_event_info *event_info;
	struct vmci_subscription *sub;
	struct vmci_event_data *ed;

	event_info = (struct vmci_delayed_event_info *)data;

	FUNC0(event_info);
	FUNC0(event_info->sub);

	sub = event_info->sub;
	ed = (struct vmci_event_data *)event_info->event_payload;

	sub->callback(sub->id, ed, sub->callback_data);

	FUNC4(&subscriber_lock);
	FUNC2(sub);
	FUNC5(&subscriber_lock);

	FUNC3(event_info, sizeof(*event_info));
}