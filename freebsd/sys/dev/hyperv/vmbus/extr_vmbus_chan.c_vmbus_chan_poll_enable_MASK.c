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
typedef  scalar_t__ u_int ;
struct vmbus_channel {int ch_flags; int /*<<< orphan*/  ch_id; } ;
struct vmbus_chan_pollarg {scalar_t__ poll_hz; struct vmbus_channel* poll_chan; } ;
struct task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmbus_chan_pollarg*) ; 
 int VMBUS_CHAN_FLAG_BATCHREAD ; 
 scalar_t__ VMBUS_CHAN_POLLHZ_MAX ; 
 scalar_t__ VMBUS_CHAN_POLLHZ_MIN ; 
 int /*<<< orphan*/  vmbus_chan_pollcfg_task ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*,struct task*) ; 

void
FUNC3(struct vmbus_channel *chan, u_int pollhz)
{
	struct vmbus_chan_pollarg arg;
	struct task poll_cfg;

	FUNC0(chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD,
	    ("enable polling on non-batch chan%u", chan->ch_id));
	FUNC0(pollhz >= VMBUS_CHAN_POLLHZ_MIN &&
	    pollhz <= VMBUS_CHAN_POLLHZ_MAX, ("invalid pollhz %u", pollhz));

	arg.poll_chan = chan;
	arg.poll_hz = pollhz;
	FUNC1(&poll_cfg, 0, vmbus_chan_pollcfg_task, &arg);
	FUNC2(chan, &poll_cfg);
}