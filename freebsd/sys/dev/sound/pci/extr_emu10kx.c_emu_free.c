
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_mem {int dmat; } ;
typedef int bus_dmamap_t ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

__attribute__((used)) static void
emu_free(struct emu_mem *mem, void *dmabuf, bus_dmamap_t map)
{
 bus_dmamap_unload(mem->dmat, map);
 bus_dmamem_free(mem->dmat, dmabuf, map);
}
