
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sackhole* nexthole; } ;
struct tcpcb {int snd_holes; TYPE_1__ sackhint; } ;
struct sackhole {int dummy; } ;


 struct sackhole* TAILQ_NEXT (struct sackhole*,int ) ;
 int TAILQ_REMOVE (int *,struct sackhole*,int ) ;
 int scblink ;
 int tcp_sackhole_free (struct tcpcb*,struct sackhole*) ;

__attribute__((used)) static void
tcp_sackhole_remove(struct tcpcb *tp, struct sackhole *hole)
{


 if (tp->sackhint.nexthole == hole)
  tp->sackhint.nexthole = TAILQ_NEXT(hole, scblink);


 TAILQ_REMOVE(&tp->snd_holes, hole, scblink);


 tcp_sackhole_free(tp, hole);
}
