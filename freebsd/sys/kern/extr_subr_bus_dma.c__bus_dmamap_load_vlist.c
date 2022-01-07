
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmap {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_3__ {size_t ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int KASSERT (int,char*) ;
 int _bus_dmamap_load_buffer (int ,int ,char*,size_t,struct pmap*,int,int *,int*) ;

__attribute__((used)) static int
_bus_dmamap_load_vlist(bus_dma_tag_t dmat, bus_dmamap_t map,
    bus_dma_segment_t *list, int sglist_cnt, struct pmap *pmap, int *nsegs,
    int flags, size_t offset, size_t length)
{
 int error;

 error = 0;
 for (; sglist_cnt > 0 && length != 0; sglist_cnt--, list++) {
  char *addr;
  size_t ds_len;

  KASSERT((offset < list->ds_len),
      ("Invalid mid-segment offset"));
  addr = (char *)(uintptr_t)list->ds_addr + offset;
  ds_len = list->ds_len - offset;
  offset = 0;
  if (ds_len > length)
   ds_len = length;
  length -= ds_len;
  KASSERT((ds_len != 0), ("Segment length is zero"));
  error = _bus_dmamap_load_buffer(dmat, map, addr, ds_len, pmap,
      flags, ((void*)0), nsegs);
  if (error)
   break;
 }
 return (error);
}
