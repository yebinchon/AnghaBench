
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_softc {int ndis_rl; int * ndis_res_am; int ndis_am_rid; int ndis_dev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct ndis_softc* device_get_softc (int ) ;
 int ndis_detach (int ) ;
 int resource_list_free (int *) ;

__attribute__((used)) static int
ndis_detach_pccard(device_t dev)
{
 struct ndis_softc *sc = device_get_softc(dev);

 (void) ndis_detach(dev);

 if (sc->ndis_res_am != ((void*)0))
  bus_release_resource(sc->ndis_dev, SYS_RES_MEMORY,
      sc->ndis_am_rid, sc->ndis_res_am);
 resource_list_free(&sc->ndis_rl);

 return (0);
}
