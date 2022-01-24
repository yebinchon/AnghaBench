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
typedef  scalar_t__ u_long ;
struct pppTimer {scalar_t__ state; scalar_t__ load; scalar_t__ rest; struct pppTimer* next; int /*<<< orphan*/  name; } ;
struct itimerval {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  LogTIMER ; 
 scalar_t__ FUNC0 (struct itimerval) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC1 (struct pppTimer*) ; 
 scalar_t__ TIMER_RUNNING ; 
 scalar_t__ TIMER_STOPPED ; 
 struct pppTimer* TimerList ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct pppTimer*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct pppTimer *tp)
{
  struct itimerval itimer;
  struct pppTimer *t, *pt;
  u_long ticks = 0;
  sigset_t mask, omask;

  FUNC5(&mask);
  FUNC4(&mask, SIGALRM);
  FUNC6(SIG_BLOCK, &mask, &omask);

  if (tp->state != TIMER_STOPPED)
    FUNC1(tp);

  if (tp->load == 0) {
    FUNC3(LogTIMER, "%s timer[%p] has 0 load!\n", tp->name, tp);
    FUNC6(SIG_SETMASK, &omask, NULL);
    return;
  }

  /*
   * We just need to insert tp in the correct relative place.  We don't
   * need to adjust TimerList->rest (yet).
   */
  if (TimerList && FUNC2(ITIMER_REAL, &itimer) == 0)
    ticks = FUNC0(itimer) - TimerList->rest;

  pt = NULL;
  for (t = TimerList; t; t = t->next) {
    if (ticks + t->rest >= tp->load)
      break;
    ticks += t->rest;
    pt = t;
  }

  tp->state = TIMER_RUNNING;
  tp->rest = tp->load - ticks;

  if (t)
    FUNC3(LogTIMER, "timer_Start: Inserting %s timer[%p] before %s "
              "timer[%p], delta = %ld\n", tp->name, tp, t->name, t, tp->rest);
  else
    FUNC3(LogTIMER, "timer_Start: Inserting %s timer[%p]\n", tp->name, tp);

  /* Insert given *tp just before *t */
  tp->next = t;
  if (pt) {
    pt->next = tp;
  } else {
    TimerList = tp;
    FUNC7(t != NULL);	/* [re]Start the Timer Service */
  }
  if (t)
    t->rest -= tp->rest;

  FUNC6(SIG_SETMASK, &omask, NULL);
}