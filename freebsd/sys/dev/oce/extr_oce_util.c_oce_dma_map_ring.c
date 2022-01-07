
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _oce_dmamap_paddr_table {int max_entries; int num_entries; TYPE_1__* paddrs; } ;
struct TYPE_5__ {int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int hi; int lo; } ;


 int ADDR_HI (int ) ;
 int ADDR_LO (int ) ;

__attribute__((used)) static void
oce_dma_map_ring(void *arg, bus_dma_segment_t * segs, int nseg, int error)
{
 int i;
 struct _oce_dmamap_paddr_table *dpt =
     (struct _oce_dmamap_paddr_table *)arg;

 if (error == 0) {
  if (nseg <= dpt->max_entries) {
   for (i = 0; i < nseg; i++) {
    dpt->paddrs[i].lo = ADDR_LO(segs[i].ds_addr);
    dpt->paddrs[i].hi = ADDR_HI(segs[i].ds_addr);
   }
   dpt->num_entries = nseg;
  }
 }
}
