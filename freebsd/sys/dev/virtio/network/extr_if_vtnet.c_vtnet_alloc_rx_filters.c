
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtnet_softc {int vtnet_flags; int * vtnet_vlan_filter; int * vtnet_mac_filter; } ;
struct vtnet_mac_filter {int dummy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int VTNET_FLAG_CTRL_RX ;
 int VTNET_FLAG_VLAN_FILTER ;
 int VTNET_VLAN_FILTER_NWORDS ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static int
vtnet_alloc_rx_filters(struct vtnet_softc *sc)
{

 if (sc->vtnet_flags & VTNET_FLAG_CTRL_RX) {
  sc->vtnet_mac_filter = malloc(sizeof(struct vtnet_mac_filter),
      M_DEVBUF, M_NOWAIT | M_ZERO);
  if (sc->vtnet_mac_filter == ((void*)0))
   return (ENOMEM);
 }

 if (sc->vtnet_flags & VTNET_FLAG_VLAN_FILTER) {
  sc->vtnet_vlan_filter = malloc(sizeof(uint32_t) *
      VTNET_VLAN_FILTER_NWORDS, M_DEVBUF, M_NOWAIT | M_ZERO);
  if (sc->vtnet_vlan_filter == ((void*)0))
   return (ENOMEM);
 }

 return (0);
}
