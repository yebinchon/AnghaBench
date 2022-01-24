#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct itimerval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
  struct itimerval itimer;

  itimer.it_interval.tv_usec = itimer.it_interval.tv_sec = 0;
  itimer.it_value.tv_usec = itimer.it_value.tv_sec = 0;
  if (FUNC1(ITIMER_REAL, &itimer, NULL) == -1)
    FUNC0(LogERROR, "Unable to set itimer (%s)\n", FUNC3(errno));
  FUNC2(SIGALRM, SIG_IGN);
}