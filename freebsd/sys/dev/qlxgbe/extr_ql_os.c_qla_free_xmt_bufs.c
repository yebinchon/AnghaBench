
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qla_tx_buf_t ;
struct TYPE_7__ {int num_tx_rings; } ;
struct TYPE_8__ {TYPE_1__* tx_ring; TYPE_2__ hw; int * tx_tag; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_6__ {int * tx_buf; } ;


 int NUM_TX_DESCRIPTORS ;
 int bus_dma_tag_destroy (int *) ;
 int bzero (void*,int) ;
 int qla_clear_tx_buf (TYPE_3__*,int *) ;

__attribute__((used)) static void
qla_free_xmt_bufs(qla_host_t *ha)
{
 int i, j;

 for (j = 0; j < ha->hw.num_tx_rings; j++) {
  for (i = 0; i < NUM_TX_DESCRIPTORS; i++)
   qla_clear_tx_buf(ha, &ha->tx_ring[j].tx_buf[i]);
 }

 if (ha->tx_tag != ((void*)0)) {
  bus_dma_tag_destroy(ha->tx_tag);
  ha->tx_tag = ((void*)0);
 }

 for (i = 0; i < ha->hw.num_tx_rings; i++) {
  bzero((void *)ha->tx_ring[i].tx_buf,
   (sizeof(qla_tx_buf_t) * NUM_TX_DESCRIPTORS));
 }
 return;
}
