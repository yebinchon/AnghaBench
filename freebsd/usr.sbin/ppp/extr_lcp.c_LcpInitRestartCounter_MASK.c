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
struct TYPE_5__ {int timeout; int maxreq; int maxtrm; } ;
struct TYPE_6__ {TYPE_2__ fsm; } ;
struct lcp {TYPE_3__ cfg; } ;
struct TYPE_4__ {int load; } ;
struct fsm {int restart; TYPE_1__ FsmTimer; } ;

/* Variables and functions */
#define  FSM_REQ_TIMER 129 
#define  FSM_TRM_TIMER 128 
 int SECTICKS ; 
 struct lcp* FUNC0 (struct fsm*) ; 

__attribute__((used)) static void
FUNC1(struct fsm *fp, int what)
{
  /* Set fsm timer load */
  struct lcp *lcp = FUNC0(fp);

  fp->FsmTimer.load = lcp->cfg.fsm.timeout * SECTICKS;
  switch (what) {
    case FSM_REQ_TIMER:
      fp->restart = lcp->cfg.fsm.maxreq;
      break;
    case FSM_TRM_TIMER:
      fp->restart = lcp->cfg.fsm.maxtrm;
      break;
    default:
      fp->restart = 1;
      break;
  }
}