
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbni_softc {struct mbuf* rx_buf_p; int inppos; struct ifnet* ifp; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;
 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void
indicate_pkt(struct sbni_softc *sc)
{
 struct ifnet *ifp = sc->ifp;
 struct mbuf *m;

 m = sc->rx_buf_p;
 m->m_pkthdr.rcvif = ifp;
 m->m_pkthdr.len = m->m_len = sc->inppos;
 sc->rx_buf_p = ((void*)0);

 SBNI_UNLOCK(sc);
 (*ifp->if_input)(ifp, m);
 SBNI_LOCK(sc);
}
