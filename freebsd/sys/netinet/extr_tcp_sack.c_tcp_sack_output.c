
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sack_bytes_rexmit; struct sackhole* nexthole; } ;
struct tcpcb {TYPE_1__ sackhint; int t_inpcb; } ;
struct sackhole {int end; int rxmit; } ;


 int INP_WLOCK_ASSERT (int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;
 struct sackhole* TAILQ_NEXT (struct sackhole*,int ) ;
 int scblink ;

struct sackhole *
tcp_sack_output(struct tcpcb *tp, int *sack_bytes_rexmt)
{
 struct sackhole *hole = ((void*)0);

 INP_WLOCK_ASSERT(tp->t_inpcb);
 *sack_bytes_rexmt = tp->sackhint.sack_bytes_rexmit;
 hole = tp->sackhint.nexthole;
 if (hole == ((void*)0) || SEQ_LT(hole->rxmit, hole->end))
  goto out;
 while ((hole = TAILQ_NEXT(hole, scblink)) != ((void*)0)) {
  if (SEQ_LT(hole->rxmit, hole->end)) {
   tp->sackhint.nexthole = hole;
   break;
  }
 }
out:
 return (hole);
}
