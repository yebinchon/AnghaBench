
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int link; } ;
struct lcp {TYPE_4__ fsm; int want_magic; } ;
struct TYPE_5__ {int seq_sent; } ;
struct TYPE_6__ {TYPE_1__ echo; } ;
struct hdlc {TYPE_2__ lqm; } ;
struct echolqr {void* sequence; void* signature; void* magic; } ;
struct TYPE_7__ {struct hdlc hdlc; } ;


 int CODE_ECHOREQ ;
 int MB_ECHOOUT ;
 int SIGNATURE ;
 int fsm_Output (TYPE_4__*,int ,int ,int *,int,int ) ;
 void* htonl (int ) ;
 TYPE_3__* link2physical (int ) ;

__attribute__((used)) static void
SendEchoReq(struct lcp *lcp)
{
  struct hdlc *hdlc = &link2physical(lcp->fsm.link)->hdlc;
  struct echolqr echo;

  echo.magic = htonl(lcp->want_magic);
  echo.signature = htonl(SIGNATURE);
  echo.sequence = htonl(hdlc->lqm.echo.seq_sent);
  fsm_Output(&lcp->fsm, CODE_ECHOREQ, hdlc->lqm.echo.seq_sent++,
            (u_char *)&echo, sizeof echo, MB_ECHOOUT);
}
