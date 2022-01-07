
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qla_tx_buf_t ;
struct TYPE_4__ {int * tx_buf; int * tx_tag; } ;
typedef TYPE_1__ qla_host_t ;


 int NUM_TX_DESCRIPTORS ;
 int bus_dma_tag_destroy (int *) ;
 int bzero (void*,int) ;
 int qla_clear_tx_buf (TYPE_1__*,int *) ;

__attribute__((used)) static void
qla_free_xmt_bufs(qla_host_t *ha)
{
 int i;

 for (i = 0; i < NUM_TX_DESCRIPTORS; i++)
  qla_clear_tx_buf(ha, &ha->tx_buf[i]);

 if (ha->tx_tag != ((void*)0)) {
  bus_dma_tag_destroy(ha->tx_tag);
  ha->tx_tag = ((void*)0);
 }
 bzero((void *)ha->tx_buf, (sizeof(qla_tx_buf_t) * NUM_TX_DESCRIPTORS));

 return;
}
