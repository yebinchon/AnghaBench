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
struct TYPE_2__ {int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef  int /*<<< orphan*/  itv ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (struct itimerval*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_alarm ; 

__attribute__((used)) static void
FUNC3(int seconds)
{
	struct itimerval itv;
	FUNC0(&itv, sizeof(itv));
	(void)seconds;
	itv.it_value.tv_sec = seconds;

	FUNC2(SIGALRM, signal_alarm);
	FUNC1(ITIMER_REAL, &itv, NULL);
}