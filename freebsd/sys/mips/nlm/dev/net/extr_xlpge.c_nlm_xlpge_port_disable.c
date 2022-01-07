
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int port; int type; int block; int base_addr; int xlpge_callout; struct ifnet* xlpge_if; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int callout_stop (int *) ;
 int nlm_mac_disable (int ,int ,int ,int ) ;

__attribute__((used)) static void
nlm_xlpge_port_disable(struct nlm_xlpge_softc *sc)
{
 struct ifnet *ifp;

 ifp = sc->xlpge_if;
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

 callout_stop(&sc->xlpge_callout);
 nlm_mac_disable(sc->base_addr, sc->block, sc->type, sc->port);
}
