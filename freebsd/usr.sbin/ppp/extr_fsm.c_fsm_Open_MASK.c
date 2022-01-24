#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int load; void* arg; int /*<<< orphan*/  (* func ) (struct fsm*) ;} ;
struct fsm {int state; int open_mode; TYPE_4__ OpenTimer; TYPE_3__* link; TYPE_2__* parent; TYPE_1__* fn; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerStart ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* LayerStart ) (struct fsm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*,int const) ; 
 int OPEN_PASSIVE ; 
 int SECTICKS ; 
#define  ST_ACKRCVD 136 
#define  ST_ACKSENT 135 
#define  ST_CLOSED 134 
#define  ST_CLOSING 133 
#define  ST_INITIAL 132 
#define  ST_OPENED 131 
#define  ST_REQSENT 130 
 int const ST_STARTING ; 
#define  ST_STOPPED 129 
#define  ST_STOPPING 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fsm*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

void
FUNC7(struct fsm *fp)
{
  switch (fp->state) {
  case ST_INITIAL:
    FUNC1(fp, ST_STARTING);
    (*fp->fn->LayerStart)(fp);
    (*fp->parent->LayerStart)(fp->parent->object, fp);
    break;
  case ST_CLOSED:
    if (fp->open_mode == OPEN_PASSIVE) {
      FUNC1(fp, ST_STOPPED);		/* XXX: This is a hack ! */
    } else if (fp->open_mode > 0) {
      if (fp->open_mode > 1)
        FUNC2(LogPHASE, "%s: Entering STOPPED state for %d seconds\n",
                  fp->link->name, fp->open_mode);
      FUNC1(fp, ST_STOPPED);		/* XXX: This is a not-so-bad hack ! */
      FUNC6(&fp->OpenTimer);
      fp->OpenTimer.load = fp->open_mode * SECTICKS;
      fp->OpenTimer.func = FsmOpenNow;
      fp->OpenTimer.arg = (void *)fp;
      FUNC5(&fp->OpenTimer);
    } else
      FUNC0(fp);
    break;
  case ST_STOPPED:		/* XXX: restart option */
  case ST_REQSENT:
  case ST_ACKRCVD:
  case ST_ACKSENT:
  case ST_OPENED:		/* XXX: restart option */
    break;
  case ST_CLOSING:		/* XXX: restart option */
  case ST_STOPPING:		/* XXX: restart option */
    FUNC1(fp, ST_STOPPING);
    break;
  }
}