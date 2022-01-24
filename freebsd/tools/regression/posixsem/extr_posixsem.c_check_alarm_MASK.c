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
struct itimerval {int dummy; } ;
typedef  int /*<<< orphan*/  it ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 scalar_t__ alarm_errno ; 
 int alarm_id ; 
 int /*<<< orphan*/  FUNC0 (struct itimerval*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(int just_clear)
{
	struct itimerval it;

	FUNC0(&it, sizeof(it));
	if (just_clear) {
		FUNC2(ITIMER_REAL, &it, NULL);
		alarm_errno = 0;
		alarm_id = -1;
		return (0);
	}
	if (FUNC2(ITIMER_REAL, &it, NULL) < 0) {
		FUNC1("setitimer");
		return (-1);
	}
	if (alarm_errno != 0 && !just_clear) {
		errno = alarm_errno;
		FUNC1("ksem_post() (via timeout)");
		alarm_errno = 0;
		return (-1);
	}
	alarm_id = -1;
	
	return (0);
}