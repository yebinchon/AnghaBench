
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
mwl_load_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 bus_addr_t *paddr = (bus_addr_t*) arg;
 KASSERT(error == 0, ("error %u on bus_dma callback", error));
 *paddr = segs->ds_addr;
}
