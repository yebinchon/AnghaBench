
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ifnet {TYPE_2__* if_softc; } ;
struct TYPE_4__ {int nwqs; TYPE_1__** wq; } ;
struct TYPE_3__ {int br; } ;
typedef TYPE_2__* POCE_SOFTC ;


 struct mbuf* buf_ring_dequeue_sc (int ) ;
 int if_qflush (struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
oce_multiq_flush(struct ifnet *ifp)
{
 POCE_SOFTC sc = ifp->if_softc;
 struct mbuf *m;
 int i = 0;

 for (i = 0; i < sc->nwqs; i++) {
  while ((m = buf_ring_dequeue_sc(sc->wq[i]->br)) != ((void*)0))
   m_freem(m);
 }
 if_qflush(ifp);
}
