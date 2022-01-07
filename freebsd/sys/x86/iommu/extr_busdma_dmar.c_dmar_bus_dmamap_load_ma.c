
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_page {int dummy; } ;
struct bus_dmamap_dmar {int dummy; } ;
struct bus_dma_tag_dmar {int dummy; } ;
typedef int bus_size_t ;
typedef scalar_t__ bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;
typedef int bus_dma_segment_t ;


 int dmar_bus_dmamap_load_something (struct bus_dma_tag_dmar*,struct bus_dmamap_dmar*,struct vm_page**,int,int ,int,int *,int*) ;

__attribute__((used)) static int
dmar_bus_dmamap_load_ma(bus_dma_tag_t dmat, bus_dmamap_t map1,
    struct vm_page **ma, bus_size_t tlen, int ma_offs, int flags,
    bus_dma_segment_t *segs, int *segp)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)map1;
 return (dmar_bus_dmamap_load_something(tag, map, ma, ma_offs, tlen,
     flags, segs, segp));
}
