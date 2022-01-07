
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {TYPE_1__* sackblks; scalar_t__ rcv_numsacks; int t_inpcb; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int MAX_SACK_BLKS ;

void
tcp_clean_sackreport(struct tcpcb *tp)
{
 int i;

 INP_WLOCK_ASSERT(tp->t_inpcb);
 tp->rcv_numsacks = 0;
 for (i = 0; i < MAX_SACK_BLKS; i++)
  tp->sackblks[i].start = tp->sackblks[i].end=0;
}
