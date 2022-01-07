
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int SCI_PHYSICAL_ADDRESS ;



SCI_PHYSICAL_ADDRESS
scif_cb_sge_get_address_field(void *scif_user_io_request, void *sge_address)
{
 bus_dma_segment_t *sge = (bus_dma_segment_t *)sge_address;

 return ((SCI_PHYSICAL_ADDRESS)sge->ds_addr);
}
