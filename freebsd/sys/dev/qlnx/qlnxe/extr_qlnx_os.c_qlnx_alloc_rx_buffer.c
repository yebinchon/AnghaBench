
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct sw_rx_data {scalar_t__ map; scalar_t__ dma_addr; struct mbuf* data; } ;
struct qlnx_rx_queue {size_t sw_rx_prod; int rx_bd_ring; struct sw_rx_data* sw_rx_ring; int rx_buf_size; } ;
struct TYPE_8__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_len; } ;
struct TYPE_9__ {void* lo; void* hi; } ;
struct eth_rx_bd {TYPE_2__ addr; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_10__ {int rx_tag; struct ecore_dev cdev; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef scalar_t__ dma_addr_t ;
typedef scalar_t__ bus_dmamap_t ;
struct TYPE_11__ {scalar_t__ ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int QL_DPRINT1 (TYPE_3__*,char*,...) ;
 int RX_RING_SIZE ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int bus_dmamap_load_mbuf_sg (int ,scalar_t__,struct mbuf*,TYPE_4__*,int*,int ) ;
 int bus_dmamap_sync (int ,scalar_t__,int ) ;
 scalar_t__ ecore_chain_produce (int *) ;
 void* htole32 (int ) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;

__attribute__((used)) static int
qlnx_alloc_rx_buffer(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
        register struct mbuf *mp;
        uint16_t rx_buf_size;
        struct sw_rx_data *sw_rx_data;
        struct eth_rx_bd *rx_bd;
        dma_addr_t dma_addr;
 bus_dmamap_t map;
 bus_dma_segment_t segs[1];
 int nsegs;
 int ret;
 struct ecore_dev *cdev;

 cdev = &ha->cdev;

        rx_buf_size = rxq->rx_buf_size;

 mp = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, rx_buf_size);

        if (mp == ((void*)0)) {
                QL_DPRINT1(ha, "Failed to allocate Rx data\n");
                return -ENOMEM;
        }

 mp->m_len = mp->m_pkthdr.len = rx_buf_size;

 map = (bus_dmamap_t)0;

 ret = bus_dmamap_load_mbuf_sg(ha->rx_tag, map, mp, segs, &nsegs,
   BUS_DMA_NOWAIT);
 dma_addr = segs[0].ds_addr;

 if (ret || !dma_addr || (nsegs != 1)) {
  m_freem(mp);
  QL_DPRINT1(ha, "bus_dmamap_load failed[%d, 0x%016llx, %d]\n",
                           ret, (long long unsigned int)dma_addr, nsegs);
  return -ENOMEM;
 }

        sw_rx_data = &rxq->sw_rx_ring[rxq->sw_rx_prod];
        sw_rx_data->data = mp;
        sw_rx_data->dma_addr = dma_addr;
        sw_rx_data->map = map;


        rx_bd = (struct eth_rx_bd *)ecore_chain_produce(&rxq->rx_bd_ring);
        rx_bd->addr.hi = htole32(U64_HI(dma_addr));
        rx_bd->addr.lo = htole32(U64_LO(dma_addr));
 bus_dmamap_sync(ha->rx_tag, map, BUS_DMASYNC_PREREAD);

        rxq->sw_rx_prod = (rxq->sw_rx_prod + 1) & (RX_RING_SIZE - 1);

        return 0;
}
