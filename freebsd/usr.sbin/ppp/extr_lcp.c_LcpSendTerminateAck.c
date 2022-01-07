
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct physical {TYPE_1__* dl; } ;
struct fsm {int link; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int CODE_TERMACK ;
 scalar_t__ DATALINK_CBCP ;
 int MB_LCPOUT ;
 int cbcp_ReceiveTerminateReq (struct physical*) ;
 int fsm_Output (struct fsm*,int ,int ,int *,int ,int ) ;
 struct physical* link2physical (int ) ;

__attribute__((used)) static void
LcpSendTerminateAck(struct fsm *fp, u_char id)
{

  struct physical *p = link2physical(fp->link);

  if (p && p->dl->state == DATALINK_CBCP)
    cbcp_ReceiveTerminateReq(p);

  fsm_Output(fp, CODE_TERMACK, id, ((void*)0), 0, MB_LCPOUT);
}
