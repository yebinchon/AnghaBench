
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_softc {int sc_res; int sc_rid; int sc_region; int sc_nod; } ;
typedef int device_t ;


 int M_TEMP ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int destroy_dev (int ) ;
 struct cfi_softc* device_get_softc (int ) ;
 int free (int ,int ) ;

int
cfi_detach(device_t dev)
{
 struct cfi_softc *sc;

 sc = device_get_softc(dev);

 destroy_dev(sc->sc_nod);
 free(sc->sc_region, M_TEMP);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_res);
 return (0);
}
