
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct fsmheader {int id; } ;
struct fsm {int link; TYPE_1__* fn; } ;
struct TYPE_2__ {scalar_t__ (* RecvResetReq ) (struct fsm*) ;} ;


 int CODE_RESETACK ;
 int MB_CCPOUT ;
 int fsm_Output (struct fsm*,int ,int ,int *,int ,int ) ;
 int link_SequenceQueue (int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ stub1 (struct fsm*) ;

__attribute__((used)) static void
FsmRecvResetReq(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
{
  if ((*fp->fn->RecvResetReq)(fp)) {





    link_SequenceQueue(fp->link);
    fsm_Output(fp, CODE_RESETACK, lhp->id, ((void*)0), 0, MB_CCPOUT);
  }
  m_freem(bp);
}
