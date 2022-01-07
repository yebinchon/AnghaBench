
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_mem {int * mem_res; int mem_rid; } ;
struct hdac_softc {int dev; struct hdac_mem mem; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
hdac_mem_free(struct hdac_softc *sc)
{
 struct hdac_mem *mem;

 mem = &sc->mem;
 if (mem->mem_res != ((void*)0))
  bus_release_resource(sc->dev, SYS_RES_MEMORY, mem->mem_rid,
      mem->mem_res);
 mem->mem_res = ((void*)0);
}
