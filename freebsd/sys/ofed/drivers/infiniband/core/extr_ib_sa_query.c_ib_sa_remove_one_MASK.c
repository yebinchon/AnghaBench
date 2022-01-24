#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_sa_device {int end_port; int start_port; TYPE_2__* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sm_ah; int /*<<< orphan*/  agent; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_sm_ah ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_wq ; 
 int /*<<< orphan*/  FUNC3 (struct ib_sa_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ib_device*,int) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device, void *client_data)
{
	struct ib_sa_device *sa_dev = client_data;
	int i;

	if (!sa_dev)
		return;

	FUNC1(&sa_dev->event_handler);

	FUNC0(ib_wq);

	for (i = 0; i <= sa_dev->end_port - sa_dev->start_port; ++i) {
		if (FUNC5(device, i + 1)) {
			FUNC2(sa_dev->port[i].agent);
			if (sa_dev->port[i].sm_ah)
				FUNC4(&sa_dev->port[i].sm_ah->ref, free_sm_ah);
		}

	}

	FUNC3(sa_dev);
}