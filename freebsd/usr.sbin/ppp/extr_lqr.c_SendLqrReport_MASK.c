#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ load; } ;
struct TYPE_10__ {int seq_sent; int seq_recv; } ;
struct TYPE_9__ {int resent; } ;
struct TYPE_12__ {int method; TYPE_6__ timer; TYPE_2__ echo; TYPE_1__ lqr; } ;
struct TYPE_13__ {TYPE_4__ lqm; } ;
struct physical {TYPE_5__ hdlc; int /*<<< orphan*/  dl; } ;
struct TYPE_11__ {TYPE_8__* link; } ;
struct lcp {TYPE_3__ fsm; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSE_NORMAL ; 
 int LQM_ECHO ; 
 int LQM_LQR ; 
 int /*<<< orphan*/  LogLQM ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (struct lcp*) ; 
 int /*<<< orphan*/  FUNC1 (struct lcp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct physical* FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static void
FUNC7(void *v)
{
  struct lcp *lcp = (struct lcp *)v;
  struct physical *p = FUNC3(lcp->fsm.link);

  FUNC6(&p->hdlc.lqm.timer);

  if (p->hdlc.lqm.method & LQM_LQR) {
    if (p->hdlc.lqm.lqr.resent > 5) {
      /* XXX: Should implement LQM strategy */
      FUNC4(LogPHASE, "%s: ** Too many LQR packets lost **\n",
                lcp->fsm.link->name);
      FUNC4(LogLQM, "%s: Too many LQR packets lost\n",
                lcp->fsm.link->name);
      p->hdlc.lqm.method = 0;
      FUNC2(p->dl, CLOSE_NORMAL);
    } else {
      FUNC1(lcp);
      p->hdlc.lqm.lqr.resent++;
    }
  } else if (p->hdlc.lqm.method & LQM_ECHO) {
    if ((p->hdlc.lqm.echo.seq_sent > 5 &&
         p->hdlc.lqm.echo.seq_sent - 5 > p->hdlc.lqm.echo.seq_recv) ||
        (p->hdlc.lqm.echo.seq_sent <= 5 &&
         p->hdlc.lqm.echo.seq_sent > p->hdlc.lqm.echo.seq_recv + 5)) {
      FUNC4(LogPHASE, "%s: ** Too many LCP ECHO packets lost **\n",
                lcp->fsm.link->name);
      FUNC4(LogLQM, "%s: Too many LCP ECHO packets lost\n",
                lcp->fsm.link->name);
      p->hdlc.lqm.method = 0;
      FUNC2(p->dl, CLOSE_NORMAL);
    } else
      FUNC0(lcp);
  }
  if (p->hdlc.lqm.method && p->hdlc.lqm.timer.load)
    FUNC5(&p->hdlc.lqm.timer);
}