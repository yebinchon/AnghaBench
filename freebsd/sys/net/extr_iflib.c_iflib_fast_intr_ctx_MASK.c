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
struct grouptask {int dummy; } ;
typedef  TYPE_1__* iflib_filter_info_t ;
struct TYPE_2__ {int (* ifi_filter ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ifi_filter_arg; struct grouptask* ifi_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int FILTER_STRAY ; 
 int /*<<< orphan*/  FUNC1 (struct grouptask*) ; 
 int /*<<< orphan*/  fast_intrs ; 
 int /*<<< orphan*/  iflib_started ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	iflib_filter_info_t info = arg;
	struct grouptask *gtask = info->ifi_task;
	int result;

	if (!iflib_started)
		return (FILTER_STRAY);

	FUNC0(fast_intrs);
	if (info->ifi_filter != NULL) {
		result = info->ifi_filter(info->ifi_filter_arg);
		if ((result & FILTER_SCHEDULE_THREAD) == 0)
			return (result);
	}

	FUNC1(gtask);
	return (FILTER_HANDLED);
}