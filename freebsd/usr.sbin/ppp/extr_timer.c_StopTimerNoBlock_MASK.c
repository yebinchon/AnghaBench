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
struct pppTimer {scalar_t__ state; scalar_t__ rest; struct pppTimer* enext; struct pppTimer* next; int /*<<< orphan*/  name; } ;
struct itimerval {int dummy; } ;

/* Variables and functions */
 struct pppTimer* ExpiredList ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  LogERROR ; 
 scalar_t__ FUNC0 (struct itimerval) ; 
 scalar_t__ TIMER_RUNNING ; 
 scalar_t__ TIMER_STOPPED ; 
 struct pppTimer* TimerList ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct pppTimer *tp)
{
  struct itimerval itimer;
  struct pppTimer *t, *pt;

  /*
   * A RUNNING timer must be removed from TimerList (->next list).
   * A STOPPED timer isn't in any list, but may have a bogus [e]next field.
   * An EXPIRED timer is in the ->enext list.
   */

  if (tp->state == TIMER_STOPPED)
    return;

  pt = NULL;
  for (t = TimerList; t != tp && t != NULL; t = t->next)
    pt = t;

  if (t) {
    if (pt)
      pt->next = t->next;
    else {
      TimerList = t->next;
      if (TimerList == NULL)	/* Last one ? */
	FUNC4();	/* Terminate Timer Service */
    }
    if (t->next) {
      if (!pt && FUNC1(ITIMER_REAL, &itimer) == 0)
        t->next->rest += FUNC0(itimer); /* t (tp) was the first in the list */
      else
        t->next->rest += t->rest;
      if (!pt && t->next->rest > 0)   /* t->next is now the first in the list */
        FUNC3(1);
    }
  } else {
    /* Search for any pending expired timers */
    pt = NULL;
    for (t = ExpiredList; t != tp && t != NULL; t = t->enext)
      pt = t;

    if (t) {
      if (pt)
        pt->enext = t->enext;
      else
        ExpiredList = t->enext;
    } else if (tp->state == TIMER_RUNNING)
      FUNC2(LogERROR, "Oops, %s timer not found!!\n", tp->name);
  }

  tp->next = tp->enext = NULL;
  tp->state = TIMER_STOPPED;
}