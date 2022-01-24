#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; } ;
struct TYPE_7__ {int tick; } ;
typedef  TYPE_1__ channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  channel_list ; 
 int channel_tick ; 
 scalar_t__ FUNC3 (void*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(int fd, short ev, void *arg)
{
	static struct timeval tv = { .tv_sec = 1 };
	channel_t *chan, *next;
	int tick;

	tick = (channel_tick % 60) + 1;
	channel_tick = 0;

	next = FUNC0(&channel_list);
	while ((chan = next) != NULL) {
		next = FUNC1(chan, next);

		if (chan->tick == tick)
			FUNC2(chan);
		else if (chan->tick != 0)
			channel_tick = tick;
	}

	if (channel_tick != 0 && FUNC3(arg, &tv) < 0) {
		FUNC5("Could not add watchdog event: %m");
		FUNC4(EXIT_FAILURE);
	}
}