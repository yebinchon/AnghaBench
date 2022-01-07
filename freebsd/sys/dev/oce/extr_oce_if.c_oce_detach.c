
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_7__ {int ifp; int * vlan_detach; int * vlan_attach; int timer; int dev_lock; struct TYPE_7__* next; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int if_free (int ) ;
 int oce_hw_shutdown (TYPE_1__*) ;
 int oce_if_deactivate (TYPE_1__*) ;
 TYPE_1__* softc_head ;
 TYPE_1__* softc_tail ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static int
oce_detach(device_t dev)
{
 POCE_SOFTC sc = device_get_softc(dev);
 POCE_SOFTC poce_sc_tmp, *ppoce_sc_tmp1, poce_sc_tmp2 = ((void*)0);

        poce_sc_tmp = softc_head;
        ppoce_sc_tmp1 = &softc_head;
        while (poce_sc_tmp != ((void*)0)) {
          if (poce_sc_tmp == sc) {
            *ppoce_sc_tmp1 = sc->next;
            if (sc->next == ((void*)0)) {
              softc_tail = poce_sc_tmp2;
            }
            break;
          }
          poce_sc_tmp2 = poce_sc_tmp;
          ppoce_sc_tmp1 = &poce_sc_tmp->next;
          poce_sc_tmp = poce_sc_tmp->next;
        }

 LOCK(&sc->dev_lock);
 oce_if_deactivate(sc);
 UNLOCK(&sc->dev_lock);

 callout_drain(&sc->timer);

 if (sc->vlan_attach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_config, sc->vlan_attach);
 if (sc->vlan_detach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_unconfig, sc->vlan_detach);

 ether_ifdetach(sc->ifp);

 if_free(sc->ifp);

 oce_hw_shutdown(sc);

 bus_generic_detach(dev);

 return 0;
}
