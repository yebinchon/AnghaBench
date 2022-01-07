
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ map; } ;
typedef TYPE_2__ qla_tx_buf_t ;
struct TYPE_8__ {int num_tx_rings; int * tx_tag; TYPE_1__* tx_ring; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_6__ {TYPE_2__* tx_buf; } ;


 int NUM_TX_DESCRIPTORS ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,scalar_t__) ;
 int qls_free_tx_ring_dma (TYPE_3__*,int) ;

__attribute__((used)) static void
qls_free_tx_dma(qla_host_t *ha)
{
 int i, j;
 qla_tx_buf_t *txb;

 for (i = 0; i < ha->num_tx_rings; i++) {

  qls_free_tx_ring_dma(ha, i);

  for (j = 0; j < NUM_TX_DESCRIPTORS; j++) {

   txb = &ha->tx_ring[i].tx_buf[j];

   if (txb->map) {
    bus_dmamap_destroy(ha->tx_tag, txb->map);
   }
  }
 }

        if (ha->tx_tag != ((void*)0)) {
                bus_dma_tag_destroy(ha->tx_tag);
                ha->tx_tag = ((void*)0);
        }

 return;
}
