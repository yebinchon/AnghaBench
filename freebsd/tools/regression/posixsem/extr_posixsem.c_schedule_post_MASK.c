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
typedef  int u_int ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef  int semid_t ;
typedef  int /*<<< orphan*/  it ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  alarm_handler ; 
 int alarm_handler_installed ; 
 int alarm_id ; 
 int /*<<< orphan*/  FUNC0 (struct itimerval*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(semid_t id, u_int msec)
{
	struct itimerval it;

	if (!alarm_handler_installed) {
		if (FUNC4(SIGALRM, alarm_handler) == SIG_ERR) {
			FUNC2("signal(SIGALRM)");
			return (-1);
		}
		alarm_handler_installed = 1;
	}
	if (alarm_id != -1) {
		FUNC1("ksem_post() already scheduled");
		return (-1);
	}
	alarm_id = id;
	FUNC0(&it, sizeof(it));
	it.it_value.tv_sec = msec / 1000;
	it.it_value.tv_usec = (msec % 1000) * 1000;
	if (FUNC3(ITIMER_REAL, &it, NULL) < 0) {
		FUNC2("setitimer");
		return (-1);
	}
	return (0);
}