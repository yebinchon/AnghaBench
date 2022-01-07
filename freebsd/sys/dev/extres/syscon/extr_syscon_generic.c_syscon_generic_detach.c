
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscon_generic_softc {int * mem_res; int * syscon; } ;
typedef int device_t ;


 int M_SYSCON ;
 int SYSCON_LOCK_DESTROY (struct syscon_generic_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct syscon_generic_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int syscon_unregister (int *) ;

__attribute__((used)) static int
syscon_generic_detach(device_t dev)
{
 struct syscon_generic_softc *sc;

 sc = device_get_softc(dev);
 if (sc->syscon != ((void*)0)) {
  syscon_unregister(sc->syscon);
  free(sc->syscon, M_SYSCON);
 }

 SYSCON_LOCK_DESTROY(sc);

 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 return (0);
}
