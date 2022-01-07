
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uintmax_t ;
struct ena_com_buf {int len; scalar_t__ paddr; } ;
struct ena_rx_buffer {TYPE_4__* mbuf; struct ena_com_buf ena_buf; int map; } ;
struct TYPE_10__ {int dma_mapping_err; int mbuf_alloc_fail; int mjum_alloc_fail; } ;
struct ena_ring {TYPE_2__ rx_stats; } ;
struct ena_adapter {int rx_buf_tag; } ;
struct TYPE_11__ {scalar_t__ ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_9__ {int len; } ;
struct TYPE_12__ {int m_len; TYPE_1__ m_pkthdr; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int EFAULT ;
 int ENA_DBG ;
 int ENA_RSC ;
 int ENA_RXPTH ;
 int ENA_WARNING ;
 int ENOMEM ;
 int MCLBYTES ;
 int MJUM16BYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int bus_dmamap_load_mbuf_sg (int ,int ,TYPE_4__*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int counter_u64_add (int ,int) ;
 int ena_trace (int,char*,...) ;
 int m_freem (TYPE_4__*) ;
 TYPE_4__* m_getcl (int ,int ,int ) ;
 TYPE_4__* m_getjcl (int ,int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
ena_alloc_rx_mbuf(struct ena_adapter *adapter,
    struct ena_ring *rx_ring, struct ena_rx_buffer *rx_info)
{
 struct ena_com_buf *ena_buf;
 bus_dma_segment_t segs[1];
 int nsegs, error;
 int mlen;


 if (unlikely(rx_info->mbuf != ((void*)0)))
  return (0);


 rx_info->mbuf = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, MJUM16BYTES);

 if (unlikely(rx_info->mbuf == ((void*)0))) {
  counter_u64_add(rx_ring->rx_stats.mjum_alloc_fail, 1);
  rx_info->mbuf = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (unlikely(rx_info->mbuf == ((void*)0))) {
   counter_u64_add(rx_ring->rx_stats.mbuf_alloc_fail, 1);
   return (ENOMEM);
  }
  mlen = MCLBYTES;
 } else {
  mlen = MJUM16BYTES;
 }

 rx_info->mbuf->m_pkthdr.len = rx_info->mbuf->m_len = mlen;


 ena_trace(ENA_DBG | ENA_RSC | ENA_RXPTH,
     "Using tag %p for buffers' DMA mapping, mbuf %p len: %d\n",
     adapter->rx_buf_tag,rx_info->mbuf, rx_info->mbuf->m_len);
 error = bus_dmamap_load_mbuf_sg(adapter->rx_buf_tag, rx_info->map,
     rx_info->mbuf, segs, &nsegs, BUS_DMA_NOWAIT);
 if (unlikely((error != 0) || (nsegs != 1))) {
  ena_trace(ENA_WARNING, "failed to map mbuf, error: %d, "
      "nsegs: %d\n", error, nsegs);
  counter_u64_add(rx_ring->rx_stats.dma_mapping_err, 1);
  goto exit;

 }

 bus_dmamap_sync(adapter->rx_buf_tag, rx_info->map, BUS_DMASYNC_PREREAD);

 ena_buf = &rx_info->ena_buf;
 ena_buf->paddr = segs[0].ds_addr;
 ena_buf->len = mlen;

 ena_trace(ENA_DBG | ENA_RSC | ENA_RXPTH,
     "ALLOC RX BUF: mbuf %p, rx_info %p, len %d, paddr %#jx\n",
     rx_info->mbuf, rx_info,ena_buf->len, (uintmax_t)ena_buf->paddr);

 return (0);

exit:
 m_freem(rx_info->mbuf);
 rx_info->mbuf = ((void*)0);
 return (EFAULT);
}
