
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u_int8_t ;
struct octm_softc {int sc_port; struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; int if_flags; } ;
typedef int cvmx_mgmt_port_netdevice_flags_t ;


 int CVMX_IFF_ALLMULTI ;
 int CVMX_IFF_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int IF_LLADDR (struct ifnet*) ;
 int cvmx_mgmt_port_disable (int ) ;
 int cvmx_mgmt_port_enable (int ) ;
 int cvmx_mgmt_port_set_mac (int ,scalar_t__) ;
 int cvmx_mgmt_port_set_multicast_list (int ,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
octm_init(void *arg)
{
 struct ifnet *ifp;
 struct octm_softc *sc;
 cvmx_mgmt_port_netdevice_flags_t flags;
 uint64_t mac;

 sc = arg;
 ifp = sc->sc_ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  cvmx_mgmt_port_disable(sc->sc_port);

  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 }







 mac = 0;
 memcpy((u_int8_t *)&mac + 2, IF_LLADDR(ifp), 6);
 cvmx_mgmt_port_set_mac(sc->sc_port, mac);





 flags = 0;
 if ((ifp->if_flags & IFF_ALLMULTI) != 0)
  flags |= CVMX_IFF_ALLMULTI;
 if ((ifp->if_flags & IFF_PROMISC) != 0)
  flags |= CVMX_IFF_PROMISC;
 cvmx_mgmt_port_set_multicast_list(sc->sc_port, flags);



 if ((ifp->if_flags & IFF_UP) != 0)
  cvmx_mgmt_port_enable(sc->sc_port);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
