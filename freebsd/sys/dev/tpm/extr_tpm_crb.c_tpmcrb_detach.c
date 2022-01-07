
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int * mem_res; int mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct tpm_sc* device_get_softc (int ) ;
 int tpm20_release (struct tpm_sc*) ;

__attribute__((used)) static int
tpmcrb_detach(device_t dev)
{
 struct tpm_sc *sc;

 sc = device_get_softc(dev);
 tpm20_release(sc);

 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->mem_rid, sc->mem_res);

 return (0);
}
