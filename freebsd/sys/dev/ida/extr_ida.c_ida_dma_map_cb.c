
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;



__attribute__((used)) static void
ida_dma_map_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *baddr;

 baddr = (bus_addr_t *)arg;
 *baddr = segs->ds_addr;
}
