
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int SCI_PHYSICAL_ADDRESS ;



__attribute__((used)) static void
isci_single_map(void *arg, bus_dma_segment_t *seg, int nseg, int error)
{
 SCI_PHYSICAL_ADDRESS *phys_addr = arg;

 *phys_addr = seg[0].ds_addr;
}
