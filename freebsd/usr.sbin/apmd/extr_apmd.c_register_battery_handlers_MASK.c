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
struct event_cmd {int dummy; } ;
struct battery_watch_event {int level; int /*<<< orphan*/  cmdlist; scalar_t__ done; int /*<<< orphan*/  direction; int /*<<< orphan*/  type; struct battery_watch_event* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATTERY_CHARGING ; 
 int /*<<< orphan*/  BATTERY_DISCHARGING ; 
 int /*<<< orphan*/  BATTERY_MINUTES ; 
 int /*<<< orphan*/  BATTERY_PERCENT ; 
 int FUNC0 (int) ; 
 struct battery_watch_event* battery_watch_list ; 
 int /*<<< orphan*/  FUNC1 (struct event_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct battery_watch_event* FUNC3 (int) ; 

int
FUNC4(
	int level, int direction,
	struct event_cmd *cmdlist)
{
	/*
	 * level is negative if it's in "minutes", non-negative if
	 * percentage.
	 *
	 * direction =1 means we care about this level when charging,
	 * direction =-1 means we care about it when discharging.
	 */
	if (level>100) /* percentage > 100 */
		return -1;
	if (FUNC0(direction) != 1) /* nonsense direction value */
		return -1;

	if (cmdlist) {
		struct battery_watch_event *we;
		
		if ((we = FUNC3(sizeof(struct battery_watch_event))) == NULL)
			FUNC2(1, "out of memory");

		we->next = battery_watch_list; /* starts at NULL */
		battery_watch_list = we;
		we->level = FUNC0(level);
		we->type = (level<0)?BATTERY_MINUTES:BATTERY_PERCENT;
		we->direction = (direction<0)?BATTERY_DISCHARGING:
			BATTERY_CHARGING;
		we->done = 0;
		we->cmdlist = FUNC1(cmdlist);
	}
	return 0;
}