
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rx_buf; } ;
typedef TYPE_1__ qla_rx_ring_t ;
struct TYPE_7__ {int * m_head; int map; } ;
typedef TYPE_2__ qla_rx_buf_t ;
struct TYPE_8__ {int num_rx_rings; int rx_tag; TYPE_1__* rx_ring; } ;
typedef TYPE_3__ qla_host_t ;


 int NUM_RX_DESCRIPTORS ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (TYPE_2__*,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
qls_free_rcv_bufs(qla_host_t *ha)
{
 int i, r;
 qla_rx_buf_t *rxb;
 qla_rx_ring_t *rxr;

 for (r = 0; r < ha->num_rx_rings; r++) {

  rxr = &ha->rx_ring[r];

  for (i = 0; i < NUM_RX_DESCRIPTORS; i++) {

   rxb = &rxr->rx_buf[i];

   if (rxb->m_head != ((void*)0)) {
    bus_dmamap_unload(ha->rx_tag, rxb->map);
    bus_dmamap_destroy(ha->rx_tag, rxb->map);
    m_freem(rxb->m_head);
   }
  }
  bzero(rxr->rx_buf, (sizeof(qla_rx_buf_t) * NUM_RX_DESCRIPTORS));
 }
 return;
}
