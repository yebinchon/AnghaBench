
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm {int reqid; } ;
struct ccp {int last_reset; int reset_sent; } ;


 int CODE_RESETREQ ;
 int MB_CCPOUT ;
 struct ccp* fsm2ccp (struct fsm*) ;
 int fsm_Output (struct fsm*,int ,int ,int *,int ,int ) ;

void
ccp_SendResetReq(struct fsm *fp)
{

  struct ccp *ccp = fsm2ccp(fp);

  ccp->reset_sent = fp->reqid;
  ccp->last_reset = -1;
  fsm_Output(fp, CODE_RESETREQ, fp->reqid, ((void*)0), 0, MB_CCPOUT);
}
