#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; void* arg; int /*<<< orphan*/  func; scalar_t__ load; } ;
struct fsm {int state; TYPE_2__ StoppedTimer; TYPE_2__ FsmTimer; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ST_INITIAL ; 
 int ST_OPENED ; 
 int ST_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  StoppedTimeout ; 
 scalar_t__ TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(struct fsm *fp, int new)
{
  FUNC1(fp->LogLevel, "%s: State change %s --> %s\n",
             fp->link->name, FUNC0(fp->state), FUNC0(new));
  if (fp->state == ST_STOPPED && fp->StoppedTimer.state == TIMER_RUNNING)
    FUNC3(&fp->StoppedTimer);
  fp->state = new;
  if ((new >= ST_INITIAL && new <= ST_STOPPED) || (new == ST_OPENED)) {
    FUNC3(&fp->FsmTimer);
    if (new == ST_STOPPED && fp->StoppedTimer.load) {
      FUNC3(&fp->StoppedTimer);
      fp->StoppedTimer.func = StoppedTimeout;
      fp->StoppedTimer.arg = (void *) fp;
      FUNC2(&fp->StoppedTimer);
    }
  }
}