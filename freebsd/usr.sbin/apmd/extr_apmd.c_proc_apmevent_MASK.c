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
struct apm_event_info {size_t type; int /*<<< orphan*/  index; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMIO_NEXTEVENT ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 TYPE_1__* events ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct apm_event_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,...) ; 

void
FUNC5(int fd)
{
	struct apm_event_info apmevent;

	while (FUNC3(fd, APMIO_NEXTEVENT, &apmevent) == 0) {
		int status;
		FUNC4(LOG_NOTICE, "apmevent %04x index %d\n",
			apmevent.type, apmevent.index);
		FUNC4(LOG_INFO, "apm event: %s", events[apmevent.type].name);
		if (FUNC2() == 0) {
			status = FUNC0(&events[apmevent.type]);
			FUNC1(status);
		}
	}
}