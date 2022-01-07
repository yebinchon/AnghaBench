
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ load; } ;
struct TYPE_10__ {int seq_sent; int seq_recv; } ;
struct TYPE_9__ {int resent; } ;
struct TYPE_12__ {int method; TYPE_6__ timer; TYPE_2__ echo; TYPE_1__ lqr; } ;
struct TYPE_13__ {TYPE_4__ lqm; } ;
struct physical {TYPE_5__ hdlc; int dl; } ;
struct TYPE_11__ {TYPE_8__* link; } ;
struct lcp {TYPE_3__ fsm; } ;
struct TYPE_15__ {int name; } ;


 int CLOSE_NORMAL ;
 int LQM_ECHO ;
 int LQM_LQR ;
 int LogLQM ;
 int LogPHASE ;
 int SendEchoReq (struct lcp*) ;
 int SendLqrData (struct lcp*) ;
 int datalink_Down (int ,int ) ;
 struct physical* link2physical (TYPE_8__*) ;
 int log_Printf (int ,char*,int ) ;
 int timer_Start (TYPE_6__*) ;
 int timer_Stop (TYPE_6__*) ;

__attribute__((used)) static void
SendLqrReport(void *v)
{
  struct lcp *lcp = (struct lcp *)v;
  struct physical *p = link2physical(lcp->fsm.link);

  timer_Stop(&p->hdlc.lqm.timer);

  if (p->hdlc.lqm.method & LQM_LQR) {
    if (p->hdlc.lqm.lqr.resent > 5) {

      log_Printf(LogPHASE, "%s: ** Too many LQR packets lost **\n",
                lcp->fsm.link->name);
      log_Printf(LogLQM, "%s: Too many LQR packets lost\n",
                lcp->fsm.link->name);
      p->hdlc.lqm.method = 0;
      datalink_Down(p->dl, CLOSE_NORMAL);
    } else {
      SendLqrData(lcp);
      p->hdlc.lqm.lqr.resent++;
    }
  } else if (p->hdlc.lqm.method & LQM_ECHO) {
    if ((p->hdlc.lqm.echo.seq_sent > 5 &&
         p->hdlc.lqm.echo.seq_sent - 5 > p->hdlc.lqm.echo.seq_recv) ||
        (p->hdlc.lqm.echo.seq_sent <= 5 &&
         p->hdlc.lqm.echo.seq_sent > p->hdlc.lqm.echo.seq_recv + 5)) {
      log_Printf(LogPHASE, "%s: ** Too many LCP ECHO packets lost **\n",
                lcp->fsm.link->name);
      log_Printf(LogLQM, "%s: Too many LCP ECHO packets lost\n",
                lcp->fsm.link->name);
      p->hdlc.lqm.method = 0;
      datalink_Down(p->dl, CLOSE_NORMAL);
    } else
      SendEchoReq(lcp);
  }
  if (p->hdlc.lqm.method && p->hdlc.lqm.timer.load)
    timer_Start(&p->hdlc.lqm.timer);
}
