
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; scalar_t__ restart; int timer; } ;
struct cbcp {TYPE_2__* p; TYPE_1__ fsm; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_3__* dl; } ;







 int LogCBCP ;
 int cbcp_SendAck (struct cbcp*) ;
 int cbcp_SendReq (struct cbcp*) ;
 int cbcp_SendResponse (struct cbcp*) ;
 int datalink_CBCPFailed (TYPE_3__*) ;
 int log_Printf (int ,char*,int ,...) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
cbcp_Timeout(void *v)
{
  struct cbcp *cbcp = (struct cbcp *)v;

  timer_Stop(&cbcp->fsm.timer);
  if (cbcp->fsm.restart) {
    switch (cbcp->fsm.state) {
      case 131:
      case 128:
        log_Printf(LogCBCP, "%s: Urk - unexpected CBCP timeout !\n",
                   cbcp->p->dl->name);
        break;

      case 130:
        cbcp_SendReq(cbcp);
        break;
      case 129:
        cbcp_SendResponse(cbcp);
        break;
      case 132:
        cbcp_SendAck(cbcp);
        break;
    }
  } else {
    const char *missed;

    switch (cbcp->fsm.state) {
      case 128:
        missed = "REQ";
        break;
      case 130:
        missed = "RESPONSE";
        break;
      case 129:
        missed = "ACK";
        break;
      case 132:
        missed = "Terminate REQ";
        break;
      default:
        log_Printf(LogCBCP, "%s: Urk - unexpected CBCP timeout !\n",
                   cbcp->p->dl->name);
        missed = ((void*)0);
        break;
    }
    if (missed)
      log_Printf(LogCBCP, "%s: Timeout waiting for peer %s\n",
                 cbcp->p->dl->name, missed);
    datalink_CBCPFailed(cbcp->p->dl);
  }
}
