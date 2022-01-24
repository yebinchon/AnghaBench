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
struct fsm {int state; TYPE_1__* parent; TYPE_2__* fn; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* LayerDown ) (struct fsm*) ;int /*<<< orphan*/  (* LayerFinish ) (struct fsm*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;int /*<<< orphan*/  (* LayerFinish ) (int /*<<< orphan*/ ,struct fsm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_TRM_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*,int /*<<< orphan*/ ) ; 
#define  ST_ACKRCVD 134 
#define  ST_ACKSENT 133 
 int /*<<< orphan*/  ST_CLOSED ; 
 int /*<<< orphan*/  ST_CLOSING ; 
 int /*<<< orphan*/  ST_INITIAL ; 
#define  ST_OPENED 132 
#define  ST_REQSENT 131 
#define  ST_STARTING 130 
#define  ST_STOPPED 129 
#define  ST_STOPPING 128 
 int /*<<< orphan*/  FUNC3 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fsm*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fsm*) ; 

void
FUNC7(struct fsm *fp)
{
  switch (fp->state) {
  case ST_STARTING:
    (*fp->fn->LayerFinish)(fp);
    FUNC2(fp, ST_INITIAL);
    (*fp->parent->LayerFinish)(fp->parent->object, fp);
    break;
  case ST_STOPPED:
    FUNC2(fp, ST_CLOSED);
    break;
  case ST_STOPPING:
    FUNC2(fp, ST_CLOSING);
    break;
  case ST_OPENED:
    (*fp->fn->LayerDown)(fp);
    if (fp->state == ST_OPENED) {
      FUNC0(fp, FSM_TRM_TIMER);
      FUNC1(fp);
      FUNC2(fp, ST_CLOSING);
      (*fp->parent->LayerDown)(fp->parent->object, fp);
    }
    break;
  case ST_REQSENT:
  case ST_ACKRCVD:
  case ST_ACKSENT:
    FUNC0(fp, FSM_TRM_TIMER);
    FUNC1(fp);
    FUNC2(fp, ST_CLOSING);
    break;
  }
}