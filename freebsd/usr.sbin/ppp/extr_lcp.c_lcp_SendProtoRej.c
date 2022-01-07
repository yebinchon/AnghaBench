
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int reqid; } ;
struct lcp {TYPE_1__ fsm; } ;


 int CODE_PROTOREJ ;
 int MB_LCPOUT ;
 int fsm_Output (TYPE_1__*,int ,int ,int *,int,int ) ;

void
lcp_SendProtoRej(struct lcp *lcp, u_char *option, int count)
{

  fsm_Output(&lcp->fsm, CODE_PROTOREJ, lcp->fsm.reqid, option, count,
             MB_LCPOUT);
}
