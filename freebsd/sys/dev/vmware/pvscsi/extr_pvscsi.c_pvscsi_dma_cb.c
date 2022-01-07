
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
pvscsi_dma_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *dest;

 KASSERT(nseg == 1, ("more than one segment"));

 dest = arg;

 if (!error) {
  *dest = segs->ds_addr;
 }
}
