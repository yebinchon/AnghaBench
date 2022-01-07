
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {struct bridge_softc* if_bridge; } ;
struct bridge_softc {int sc_ifp; } ;


 scalar_t__ PFIL_HOOKED_OUT (int ) ;
 int PFIL_OUT ;
 int V_inet6_pfil_head ;
 int V_inet_pfil_head ;
 int bridge_enqueue (struct bridge_softc*,struct ifnet*,struct mbuf*) ;
 scalar_t__ bridge_pfil (struct mbuf**,int ,struct ifnet*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
bridge_dummynet(struct mbuf *m, struct ifnet *ifp)
{
 struct bridge_softc *sc;

 sc = ifp->if_bridge;






 if (sc == ((void*)0)) {
  m_freem(m);
  return;
 }

 if (PFIL_HOOKED_OUT(V_inet_pfil_head)



     ) {
  if (bridge_pfil(&m, sc->sc_ifp, ifp, PFIL_OUT) != 0)
   return;
  if (m == ((void*)0))
   return;
 }

 bridge_enqueue(sc, ifp, m);
}
