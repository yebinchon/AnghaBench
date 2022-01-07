
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nexthole; scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ snd_numholes; TYPE_1__ sackhint; int snd_holes; int t_inpcb; } ;
struct sackhole {int dummy; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 struct sackhole* TAILQ_FIRST (int *) ;
 int tcp_sackhole_remove (struct tcpcb*,struct sackhole*) ;

void
tcp_free_sackholes(struct tcpcb *tp)
{
 struct sackhole *q;

 INP_WLOCK_ASSERT(tp->t_inpcb);
 while ((q = TAILQ_FIRST(&tp->snd_holes)) != ((void*)0))
  tcp_sackhole_remove(tp, q);
 tp->sackhint.sack_bytes_rexmit = 0;

 KASSERT(tp->snd_numholes == 0, ("tp->snd_numholes == 0"));
 KASSERT(tp->sackhint.nexthole == ((void*)0),
  ("tp->sackhint.nexthole == NULL"));
}
