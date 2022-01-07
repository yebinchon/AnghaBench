
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * m_head; int map; } ;
typedef TYPE_3__ qla_rx_buf_t ;
struct TYPE_7__ {int num_rds_rings; } ;
struct TYPE_9__ {int rx_tag; TYPE_1__* rx_ring; TYPE_2__ hw; } ;
typedef TYPE_4__ qla_host_t ;
struct TYPE_6__ {TYPE_3__* rx_buf; } ;


 int NUM_RX_DESCRIPTORS ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
qla_free_rcv_std(qla_host_t *ha)
{
 int i, r;
 qla_rx_buf_t *rxb;

 for (r = 0; r < ha->hw.num_rds_rings; r++) {
  for (i = 0; i < NUM_RX_DESCRIPTORS; i++) {
   rxb = &ha->rx_ring[r].rx_buf[i];
   if (rxb->m_head != ((void*)0)) {
    bus_dmamap_unload(ha->rx_tag, rxb->map);
    bus_dmamap_destroy(ha->rx_tag, rxb->map);
    m_freem(rxb->m_head);
    rxb->m_head = ((void*)0);
   }
  }
 }
 return;
}
