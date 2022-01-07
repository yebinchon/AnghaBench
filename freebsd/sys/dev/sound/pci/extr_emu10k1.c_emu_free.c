
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int parent_dmat; } ;
typedef int bus_dmamap_t ;


 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,void*,int ) ;

__attribute__((used)) static void
emu_free(struct sc_info *sc, void *buf, bus_dmamap_t map)
{
 bus_dmamap_unload(sc->parent_dmat, map);
 bus_dmamem_free(sc->parent_dmat, buf, map);
}
