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
struct ena_que {int /*<<< orphan*/  cleanup_tq; int /*<<< orphan*/  cleanup_task; } ;
struct ena_adapter {int num_queues; struct ena_que* que; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ena_adapter *adapter)
{
	struct ena_que *queue;
	int i;

	for (i = 0; i < adapter->num_queues; i++) {
		queue = &adapter->que[i];
		while (FUNC2(queue->cleanup_tq,
		    &queue->cleanup_task, NULL))
			FUNC3(queue->cleanup_tq,
			    &queue->cleanup_task);
		FUNC4(queue->cleanup_tq);
	}

	FUNC1(adapter);
	FUNC0(adapter);
}