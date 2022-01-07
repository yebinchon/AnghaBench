
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nbufs; TYPE_4__* shadow; int * lanai; TYPE_1__* info; int dmat; int mlen; int alloc_fail; int cl_size; } ;
struct mxge_slice_state {TYPE_2__ rx_big; } ;
struct mbuf {int m_len; } ;
typedef TYPE_2__ mxge_rx_ring_t ;
typedef int bus_dmamap_t ;
struct TYPE_8__ {int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_9__ {void* addr_high; void* addr_low; } ;
struct TYPE_6__ {struct mbuf* m; } ;


 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int MT_DATA ;
 int MXGE_HIGHPART_TO_U32 (int ) ;
 int MXGE_LOWPART_TO_U32 (int ) ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_3__*,int*,int ) ;
 void* htobe32 (int ) ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_getjcl (int ,int ,int ,int ) ;
 int mxge_submit_8rx (int *,TYPE_4__*) ;

__attribute__((used)) static int
mxge_get_buf_big(struct mxge_slice_state *ss, bus_dmamap_t map, int idx)
{
 bus_dma_segment_t seg[3];
 struct mbuf *m;
 mxge_rx_ring_t *rx = &ss->rx_big;
 int cnt, err, i;

 m = m_getjcl(M_NOWAIT, MT_DATA, M_PKTHDR, rx->cl_size);
 if (m == ((void*)0)) {
  rx->alloc_fail++;
  err = ENOBUFS;
  goto done;
 }
 m->m_len = rx->mlen;
 err = bus_dmamap_load_mbuf_sg(rx->dmat, map, m,
          seg, &cnt, BUS_DMA_NOWAIT);
 if (err != 0) {
  m_free(m);
  goto done;
 }
 rx->info[idx].m = m;
 rx->shadow[idx].addr_low =
  htobe32(MXGE_LOWPART_TO_U32(seg->ds_addr));
 rx->shadow[idx].addr_high =
  htobe32(MXGE_HIGHPART_TO_U32(seg->ds_addr));
done:
       for (i = 0; i < rx->nbufs; i++) {
  if ((idx & 7) == 7) {
   mxge_submit_8rx(&rx->lanai[idx - 7],
     &rx->shadow[idx - 7]);
  }
  idx++;
 }
 return err;
}
