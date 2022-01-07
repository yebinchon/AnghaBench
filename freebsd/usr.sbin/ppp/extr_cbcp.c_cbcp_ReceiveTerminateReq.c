
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct physical {TYPE_2__* dl; } ;
struct TYPE_4__ {scalar_t__ state; int phone; } ;
struct TYPE_6__ {int required; TYPE_1__ fsm; } ;
struct TYPE_5__ {TYPE_3__ cbcp; int name; } ;


 scalar_t__ CBCP_ACKSENT ;
 int CBCP_CLOSED ;
 int LogPHASE ;
 int cbcp_NewPhase (TYPE_3__*,int ) ;
 int log_Printf (int ,char*,int ,int ) ;

void
cbcp_ReceiveTerminateReq(struct physical *p)
{
  if (p->dl->cbcp.fsm.state == CBCP_ACKSENT) {

    p->dl->cbcp.required = 1;
    log_Printf(LogPHASE, "%s: CBCP: Will dial back on %s\n", p->dl->name,
               p->dl->cbcp.fsm.phone);
  } else
    cbcp_NewPhase(&p->dl->cbcp, CBCP_CLOSED);
}
