
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_1__* sc_p ;
struct TYPE_3__ {int * last_packet; scalar_t__ queueOctets; int snd_queue; } ;


 int NG_FREE_M (struct mbuf*) ;
 int _IF_DEQUEUE (int *,struct mbuf*) ;

__attribute__((used)) static void
ng_source_clr_data (sc_p sc)
{
 struct mbuf *m;

 for (;;) {
  _IF_DEQUEUE(&sc->snd_queue, m);
  if (m == ((void*)0))
   break;
  NG_FREE_M(m);
 }
 sc->queueOctets = 0;
 sc->last_packet = ((void*)0);
}
