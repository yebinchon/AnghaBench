
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;


 int KASSERT (int,char*) ;

void
hyperv_dma_map_paddr(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *paddr = arg;

 if (error)
  return;

 KASSERT(nseg == 1, ("too many segments %d!", nseg));
 *paddr = segs->ds_addr;
}
