
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct rbuf_info {struct mbuf* mbuf; int dmap; int dmat; } ;
struct rbdr {int rbdr_buff_dmat; } ;
struct nicvf {int dev; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {scalar_t__ m_data; TYPE_1__ m_pkthdr; int m_len; } ;
typedef int bus_dmamap_t ;
struct TYPE_5__ {scalar_t__ ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int MCLBYTES ;
 int MT_DATA ;
 int M_PKTHDR ;
 scalar_t__ NICVF_RCV_BUF_ALIGN_BYTES ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_2__*,int*,int ) ;
 int device_printf (int ,char*,int) ;
 int m_adj (struct mbuf*,scalar_t__) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_getjcl (int,int ,int ,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static __inline int
nicvf_alloc_rcv_buffer(struct nicvf *nic, struct rbdr *rbdr,
    bus_dmamap_t dmap, int mflags, uint32_t buf_len, bus_addr_t *rbuf)
{
 struct mbuf *mbuf;
 struct rbuf_info *rinfo;
 bus_dma_segment_t segs[1];
 int nsegs;
 int err;

 mbuf = m_getjcl(mflags, MT_DATA, M_PKTHDR, MCLBYTES);
 if (mbuf == ((void*)0))
  return (ENOMEM);





 mbuf->m_len = mbuf->m_pkthdr.len = buf_len;

 err = bus_dmamap_load_mbuf_sg(rbdr->rbdr_buff_dmat, dmap, mbuf, segs,
     &nsegs, BUS_DMA_NOWAIT);
 if (err != 0) {
  device_printf(nic->dev,
      "Failed to map mbuf into DMA visible memory, err: %d\n",
      err);
  m_freem(mbuf);
  bus_dmamap_destroy(rbdr->rbdr_buff_dmat, dmap);
  return (err);
 }
 if (nsegs != 1)
  panic("Unexpected number of DMA segments for RB: %d", nsegs);




 rinfo = (struct rbuf_info *)mbuf->m_data;
 m_adj(mbuf, NICVF_RCV_BUF_ALIGN_BYTES);

 rinfo->dmat = rbdr->rbdr_buff_dmat;
 rinfo->dmap = dmap;
 rinfo->mbuf = mbuf;

 *rbuf = segs[0].ds_addr + NICVF_RCV_BUF_ALIGN_BYTES;

 return (0);
}
