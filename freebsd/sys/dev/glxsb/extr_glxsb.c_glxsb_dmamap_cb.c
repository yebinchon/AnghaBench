
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;



__attribute__((used)) static void
glxsb_dmamap_cb(void *arg, bus_dma_segment_t *seg, int nseg, int error)
{

 bus_addr_t *paddr = (bus_addr_t*) arg;
 *paddr = seg[0].ds_addr;
}
