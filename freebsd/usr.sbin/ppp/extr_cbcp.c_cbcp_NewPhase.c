
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
struct cbcp {TYPE_3__ fsm; TYPE_2__* p; } ;
struct TYPE_5__ {TYPE_1__* dl; } ;
struct TYPE_4__ {int name; } ;


 int LogCBCP ;
 int cbcpstate (int) ;
 int log_Printf (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
cbcp_NewPhase(struct cbcp *cbcp, int new)
{
  if (cbcp->fsm.state != new) {
    log_Printf(LogCBCP, "%s: State change %s --> %s\n", cbcp->p->dl->name,
               cbcpstate(cbcp->fsm.state), cbcpstate(new));
    cbcp->fsm.state = new;
  }
}
