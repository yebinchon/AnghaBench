
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int * vtnet_vlan_filter; int * vtnet_mac_filter; } ;


 int M_DEVBUF ;
 int free (int *,int ) ;

__attribute__((used)) static void
vtnet_free_rx_filters(struct vtnet_softc *sc)
{

 if (sc->vtnet_mac_filter != ((void*)0)) {
  free(sc->vtnet_mac_filter, M_DEVBUF);
  sc->vtnet_mac_filter = ((void*)0);
 }

 if (sc->vtnet_vlan_filter != ((void*)0)) {
  free(sc->vtnet_vlan_filter, M_DEVBUF);
  sc->vtnet_vlan_filter = ((void*)0);
 }
}
