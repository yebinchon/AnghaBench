
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
nicvf_dmamap_q_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *paddr;

 KASSERT(nseg == 1, ("wrong number of segments, should be 1"));
 paddr = arg;
 *paddr = segs->ds_addr;
}
