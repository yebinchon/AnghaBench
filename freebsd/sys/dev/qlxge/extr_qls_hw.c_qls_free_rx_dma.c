
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_rx_rings; int * rx_tag; } ;
typedef TYPE_1__ qla_host_t ;


 int bus_dma_tag_destroy (int *) ;
 int qls_free_rx_ring_dma (TYPE_1__*,int) ;

__attribute__((used)) static void
qls_free_rx_dma(qla_host_t *ha)
{
 int i;

 for (i = 0; i < ha->num_rx_rings; i++) {
  qls_free_rx_ring_dma(ha, i);
 }

        if (ha->rx_tag != ((void*)0)) {
                bus_dma_tag_destroy(ha->rx_tag);
                ha->rx_tag = ((void*)0);
        }

 return;
}
