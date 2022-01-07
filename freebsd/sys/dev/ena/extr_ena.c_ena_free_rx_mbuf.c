
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_rx_buffer {int * mbuf; int map; } ;
struct ena_ring {int dummy; } ;
struct ena_adapter {int rx_buf_tag; } ;


 int BUS_DMASYNC_POSTREAD ;
 int ENA_WARNING ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ena_trace (int ,char*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ena_free_rx_mbuf(struct ena_adapter *adapter, struct ena_ring *rx_ring,
    struct ena_rx_buffer *rx_info)
{

 if (rx_info->mbuf == ((void*)0)) {
  ena_trace(ENA_WARNING, "Trying to free unallocated buffer\n");
  return;
 }

 bus_dmamap_sync(adapter->rx_buf_tag, rx_info->map,
     BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(adapter->rx_buf_tag, rx_info->map);
 m_freem(rx_info->mbuf);
 rx_info->mbuf = ((void*)0);
}
