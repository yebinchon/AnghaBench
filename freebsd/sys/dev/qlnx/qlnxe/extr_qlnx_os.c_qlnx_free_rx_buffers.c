
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sw_rx_data {int * data; int * map; } ;
struct qlnx_rx_queue {int num_rx_buffers; struct sw_rx_data* sw_rx_ring; } ;
struct TYPE_3__ {int rx_tag; } ;
typedef TYPE_1__ qlnx_host_t ;


 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_unload (int ,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
qlnx_free_rx_buffers(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
        int i;
 struct sw_rx_data *rx_buf;

        for (i = 0; i < rxq->num_rx_buffers; i++) {

                rx_buf = &rxq->sw_rx_ring[i];

  if (rx_buf->data != ((void*)0)) {
   if (rx_buf->map != ((void*)0)) {
    bus_dmamap_unload(ha->rx_tag, rx_buf->map);
    bus_dmamap_destroy(ha->rx_tag, rx_buf->map);
    rx_buf->map = ((void*)0);
   }
   m_freem(rx_buf->data);
   rx_buf->data = ((void*)0);
  }
        }
 return;
}
