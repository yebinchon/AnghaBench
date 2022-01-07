
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ds_len; } ;
typedef TYPE_1__ bus_dma_segment_t ;



uint32_t
scif_cb_sge_get_length_field(void *scif_user_io_request, void *sge_address)
{
 bus_dma_segment_t *sge = (bus_dma_segment_t *)sge_address;

 return ((uint32_t)sge->ds_len);
}
