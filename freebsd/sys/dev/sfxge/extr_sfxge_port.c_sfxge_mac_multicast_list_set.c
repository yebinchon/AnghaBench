
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_port {scalar_t__ mcast_count; int mcast_addrs; int lock; } ;
struct sfxge_softc {int dev; int enp; struct sfxge_port port; struct ifnet* ifnet; } ;
struct ifnet {int dummy; } ;


 scalar_t__ EFX_MAC_MULTICAST_LIST_MAX ;
 int EINVAL ;
 int MA_OWNED ;
 int device_printf (int ,char*) ;
 int efx_mac_multicast_list_set (int ,int ,scalar_t__) ;
 scalar_t__ if_foreach_llmaddr (struct ifnet*,int ,int ) ;
 int mtx_assert (int *,int ) ;
 int sfxge_copy_maddr ;

__attribute__((used)) static int
sfxge_mac_multicast_list_set(struct sfxge_softc *sc)
{
 struct ifnet *ifp = sc->ifnet;
 struct sfxge_port *port = &sc->port;
 int rc = 0;

 mtx_assert(&port->lock, MA_OWNED);

 port->mcast_count = if_foreach_llmaddr(ifp, sfxge_copy_maddr,
     port->mcast_addrs);
 if (port->mcast_count == EFX_MAC_MULTICAST_LIST_MAX) {
  device_printf(sc->dev, "Too many multicast addresses\n");
  rc = EINVAL;
 }

 if (rc == 0) {
  rc = efx_mac_multicast_list_set(sc->enp, port->mcast_addrs,
      port->mcast_count);
  if (rc != 0)
   device_printf(sc->dev,
       "Cannot set multicast address list\n");
 }

 return (rc);
}
