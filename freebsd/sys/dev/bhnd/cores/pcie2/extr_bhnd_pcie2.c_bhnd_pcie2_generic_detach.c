
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pcie2_softc {int mem_res; int mem_rid; } ;
typedef int device_t ;


 int BHND_PCIE2_LOCK_DESTROY (struct bhnd_pcie2_softc*) ;
 int SYS_RES_MEMORY ;
 int bhnd_release_resource (int ,int ,int ,int ) ;
 int bus_generic_detach (int ) ;
 struct bhnd_pcie2_softc* device_get_softc (int ) ;

int
bhnd_pcie2_generic_detach(device_t dev)
{
 struct bhnd_pcie2_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(dev)))
  return (error);

 bhnd_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);

 BHND_PCIE2_LOCK_DESTROY(sc);

 return (0);
}
