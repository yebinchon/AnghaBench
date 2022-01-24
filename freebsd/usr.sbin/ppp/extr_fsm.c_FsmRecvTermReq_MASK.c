#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct fsmheader {int /*<<< orphan*/  id; } ;
struct fsm {int state; TYPE_3__* parent; int /*<<< orphan*/  restart; int /*<<< orphan*/  FsmTimer; TYPE_2__* fn; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_6__ {int /*<<< orphan*/  object; int /*<<< orphan*/  (* LayerDown ) (int /*<<< orphan*/ ,struct fsm*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* SendTerminateAck ) (struct fsm*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* LayerDown ) (struct fsm*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_TRM_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*,int const) ; 
#define  ST_ACKRCVD 137 
#define  ST_ACKSENT 136 
#define  ST_CLOSED 135 
#define  ST_CLOSING 134 
#define  ST_INITIAL 133 
#define  ST_OPENED 132 
#define  ST_REQSENT 131 
#define  ST_STARTING 130 
#define  ST_STOPPED 129 
#define  ST_STOPPING 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC8 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct fsm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
/* RTR */
{
  switch (fp->state) {
  case ST_INITIAL:
  case ST_STARTING:
    FUNC3(fp->LogLevel, "%s: Oops, RTR in %s\n",
              fp->link->name, FUNC2(fp->state));
    break;
  case ST_CLOSED:
  case ST_STOPPED:
  case ST_CLOSING:
  case ST_STOPPING:
  case ST_REQSENT:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    break;
  case ST_ACKRCVD:
  case ST_ACKSENT:
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    FUNC1(fp, ST_REQSENT);
    break;
  case ST_OPENED:
    (*fp->fn->LayerDown)(fp);
    (*fp->fn->SendTerminateAck)(fp, lhp->id);
    FUNC0(fp, FSM_TRM_TIMER);
    FUNC10(&fp->FsmTimer);			/* Start restart timer */
    fp->restart = 0;
    FUNC1(fp, ST_STOPPING);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    /* A delayed ST_STOPPED is now scheduled */
    break;
  }
  FUNC4(bp);
}