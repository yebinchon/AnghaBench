
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct fsmheader {int id; } ;
struct fsm {TYPE_1__* fn; } ;
struct TYPE_2__ {int (* RecvResetAck ) (struct fsm*,int ) ;} ;


 int m_freem (struct mbuf*) ;
 int stub1 (struct fsm*,int ) ;

__attribute__((used)) static void
FsmRecvResetAck(struct fsm *fp, struct fsmheader *lhp, struct mbuf *bp)
{
  (*fp->fn->RecvResetAck)(fp, lhp->id);
  m_freem(bp);
}
