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
struct vmbus_channel {int /*<<< orphan*/ * ch_dev; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmbus_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct vmbus_channel *chan)
{
	int error = 0;

	FUNC1(&Giant);
	if (chan->ch_dev != NULL) {
		error = FUNC0(chan->ch_vmbus->vmbus_dev,
		    chan->ch_dev);
		chan->ch_dev = NULL;
	}
	FUNC2(&Giant);
	return (error);
}