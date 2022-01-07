
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;



void
oce_dma_map_addr(void *arg, bus_dma_segment_t * segs, int nseg, int error)
{
 bus_addr_t *paddr = arg;

 if (error)
  *paddr = 0;
 else
  *paddr = segs->ds_addr;
}
