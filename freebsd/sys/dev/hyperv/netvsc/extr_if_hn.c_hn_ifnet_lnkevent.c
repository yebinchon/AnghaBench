
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct hn_softc {int hn_ifp; struct ifnet* hn_vf_ifp; } ;


 int if_link_state_change (int ,int) ;

__attribute__((used)) static void
hn_ifnet_lnkevent(void *xsc, struct ifnet *ifp, int link_state)
{
 struct hn_softc *sc = xsc;

 if (sc->hn_vf_ifp == ifp)
  if_link_state_change(sc->hn_ifp, link_state);
}
