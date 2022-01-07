
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rx_buf; } ;
typedef TYPE_1__ qla_rx_ring_t ;
typedef int qla_rx_buf_t ;
struct TYPE_7__ {int num_rx_rings; TYPE_1__* rx_ring; } ;
typedef TYPE_2__ qla_host_t ;


 int NUM_RX_DESCRIPTORS ;
 int bzero (int ,int) ;
 int qls_alloc_rcv_mbufs (TYPE_2__*,int) ;
 int qls_free_rcv_bufs (TYPE_2__*) ;

__attribute__((used)) static int
qls_alloc_rcv_bufs(qla_host_t *ha)
{
 int r, ret = 0;
 qla_rx_ring_t *rxr;

 for (r = 0; r < ha->num_rx_rings; r++) {
  rxr = &ha->rx_ring[r];
  bzero(rxr->rx_buf, (sizeof(qla_rx_buf_t) * NUM_RX_DESCRIPTORS));
 }

 for (r = 0; r < ha->num_rx_rings; r++) {

  ret = qls_alloc_rcv_mbufs(ha, r);

  if (ret)
   qls_free_rcv_bufs(ha);
 }

 return (ret);
}
