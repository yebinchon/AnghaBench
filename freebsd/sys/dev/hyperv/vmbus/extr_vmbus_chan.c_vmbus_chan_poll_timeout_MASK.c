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
struct vmbus_channel {scalar_t__ ch_poll_intvl; int /*<<< orphan*/  ch_poll_task; int /*<<< orphan*/  ch_tq; int /*<<< orphan*/  ch_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *xchan)
{
	struct vmbus_channel *chan = xchan;

	FUNC0(chan->ch_poll_intvl != 0,
	    ("chan%u: polling timeout in interrupt mode", chan->ch_id));
	FUNC1(chan->ch_tq, &chan->ch_poll_task);
}