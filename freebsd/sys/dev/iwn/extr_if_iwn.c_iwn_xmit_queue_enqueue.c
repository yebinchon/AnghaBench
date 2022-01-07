
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct iwn_softc {int sc_xmit_queue; } ;


 int IWN_LOCK_ASSERT (struct iwn_softc*) ;
 int mbufq_enqueue (int *,struct mbuf*) ;

__attribute__((used)) static int
iwn_xmit_queue_enqueue(struct iwn_softc *sc, struct mbuf *m)
{

 IWN_LOCK_ASSERT(sc);
 return (mbufq_enqueue(&sc->sc_xmit_queue, m));
}
