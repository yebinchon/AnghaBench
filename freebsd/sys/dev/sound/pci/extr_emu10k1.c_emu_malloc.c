
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int parent_dmat; } ;
typedef int bus_dmamap_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_NOWAIT ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int emu_setmap ;

__attribute__((used)) static void *
emu_malloc(struct sc_info *sc, u_int32_t sz, bus_addr_t *addr,
    bus_dmamap_t *map)
{
 void *buf;

 *addr = 0;
 if (bus_dmamem_alloc(sc->parent_dmat, &buf, BUS_DMA_NOWAIT, map))
  return ((void*)0);
 if (bus_dmamap_load(sc->parent_dmat, *map, buf, sz, emu_setmap, addr, 0)
     || !*addr) {
  bus_dmamem_free(sc->parent_dmat, buf, *map);
  return ((void*)0);
 }
 return buf;
}
