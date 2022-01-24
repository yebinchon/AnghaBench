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
struct vmbus_channel {size_t ch_id; TYPE_1__* ch_vmbus; } ;
struct TYPE_2__ {struct vmbus_channel** vmbus_chmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct vmbus_channel *chan)
{
	FUNC0();
	chan->ch_vmbus->vmbus_chmap[chan->ch_id] = chan;
}