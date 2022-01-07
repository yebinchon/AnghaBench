
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_ports; int ** ifname; int ** ifp; int ** miibus; int sx; } ;
typedef TYPE_1__ e6000sw_softc_t ;
typedef int device_t ;


 int M_E6000SW ;
 int bus_generic_detach (int ) ;
 int device_delete_child (int ,int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int free (int *,int ) ;
 int if_free (int *) ;
 int sx_destroy (int *) ;

__attribute__((used)) static int
e6000sw_detach(device_t dev)
{
 int phy;
 e6000sw_softc_t *sc;

 sc = device_get_softc(dev);
 bus_generic_detach(dev);
 sx_destroy(&sc->sx);
 for (phy = 0; phy < sc->num_ports; phy++) {
  if (sc->miibus[phy] != ((void*)0))
   device_delete_child(dev, sc->miibus[phy]);
  if (sc->ifp[phy] != ((void*)0))
   if_free(sc->ifp[phy]);
  if (sc->ifname[phy] != ((void*)0))
   free(sc->ifname[phy], M_E6000SW);
 }

 return (0);
}
