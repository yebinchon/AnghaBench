
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num_tx_rings; TYPE_1__* tx_ring; } ;
typedef TYPE_2__ qla_host_t ;
struct TYPE_5__ {int * tx_buf; } ;


 int NUM_TX_DESCRIPTORS ;
 int qls_flush_tx_buf (TYPE_2__*,int *) ;

__attribute__((used)) static void
qls_flush_xmt_bufs(qla_host_t *ha)
{
 int i, j;

 for (j = 0; j < ha->num_tx_rings; j++) {
  for (i = 0; i < NUM_TX_DESCRIPTORS; i++)
   qls_flush_tx_buf(ha, &ha->tx_ring[j].tx_buf[i]);
 }

 return;
}
