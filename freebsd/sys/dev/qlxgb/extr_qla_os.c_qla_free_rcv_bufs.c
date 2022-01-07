
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
struct TYPE_7__ {TYPE_1__* sds; } ;
struct TYPE_9__ {TYPE_2__ hw; TYPE_3__* rx_jbuf; TYPE_3__* rx_buf; int * rx_tag; } ;
typedef TYPE_4__ qla_host_t ;
struct TYPE_6__ {scalar_t__ rxj_free; int * rxjb_free; scalar_t__ rx_free; int * rxb_free; scalar_t__ sdsr_next; } ;


 int MAX_SDS_RINGS ;
 int NUM_RX_DESCRIPTORS ;
 int NUM_RX_JUMBO_DESCRIPTORS ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bzero (void*,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
qla_free_rcv_bufs(qla_host_t *ha)
{
 int i;
 qla_rx_buf_t *rxb;

 for (i = 0; i < NUM_RX_DESCRIPTORS; i++) {
  rxb = &ha->rx_buf[i];
  if (rxb->m_head != ((void*)0)) {
   bus_dmamap_unload(ha->rx_tag, rxb->map);
   bus_dmamap_destroy(ha->rx_tag, rxb->map);
   m_freem(rxb->m_head);
   rxb->m_head = ((void*)0);
  }
 }

 for (i = 0; i < NUM_RX_JUMBO_DESCRIPTORS; i++) {
  rxb = &ha->rx_jbuf[i];
  if (rxb->m_head != ((void*)0)) {
   bus_dmamap_unload(ha->rx_tag, rxb->map);
   bus_dmamap_destroy(ha->rx_tag, rxb->map);
   m_freem(rxb->m_head);
   rxb->m_head = ((void*)0);
  }
 }

 if (ha->rx_tag != ((void*)0)) {
  bus_dma_tag_destroy(ha->rx_tag);
  ha->rx_tag = ((void*)0);
 }

 bzero((void *)ha->rx_buf, (sizeof(qla_rx_buf_t) * NUM_RX_DESCRIPTORS));
 bzero((void *)ha->rx_jbuf,
  (sizeof(qla_rx_buf_t) * NUM_RX_JUMBO_DESCRIPTORS));

 for (i = 0; i < MAX_SDS_RINGS; i++) {
  ha->hw.sds[i].sdsr_next = 0;
  ha->hw.sds[i].rxb_free = ((void*)0);
  ha->hw.sds[i].rx_free = 0;
  ha->hw.sds[i].rxjb_free = ((void*)0);
  ha->hw.sds[i].rxj_free = 0;
 }

 return;
}
