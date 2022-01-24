#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event {int dummy; } ;
struct TYPE_3__ {int tick; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 int channel_tick ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event*),struct event*) ; 

void
FUNC2(channel_t *chan, int to)
{
	static struct event ev;

	if (to == 0)
		chan->tick = 0;
	else
		chan->tick = (channel_tick + to) % 60;

	if (channel_tick == 0) {
		FUNC1(&ev, channel_watchdog, &ev);
		FUNC0(0, 0, &ev);
	}
}