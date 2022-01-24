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
struct TYPE_4__ {scalar_t__ state; } ;
struct fsm {scalar_t__ state; TYPE_2__ OpenTimer; int /*<<< orphan*/  name; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ ST_STOPPED ; 
 scalar_t__ TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(void *v)
{
  struct fsm *fp = (struct fsm *)v;

  FUNC1(fp->LogLevel, "%s: Stopped timer expired\n", fp->link->name);
  if (fp->OpenTimer.state == TIMER_RUNNING) {
    FUNC1(LogWARN, "%s: %s: aborting open delay due to stopped timer\n",
              fp->link->name, fp->name);
    FUNC2(&fp->OpenTimer);
  }
  if (fp->state == ST_STOPPED)
    FUNC0(fp);
}