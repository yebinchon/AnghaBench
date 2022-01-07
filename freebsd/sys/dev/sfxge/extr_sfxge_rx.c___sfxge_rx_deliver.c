
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_softc {struct ifnet* ifnet; } ;
struct TYPE_2__ {int csum_data; struct ifnet* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;


 int stub1 (struct ifnet*,struct mbuf*) ;

__attribute__((used)) static void __sfxge_rx_deliver(struct sfxge_softc *sc, struct mbuf *m)
{
 struct ifnet *ifp = sc->ifnet;

 m->m_pkthdr.rcvif = ifp;
 m->m_pkthdr.csum_data = 0xffff;
 ifp->if_input(ifp, m);
}
