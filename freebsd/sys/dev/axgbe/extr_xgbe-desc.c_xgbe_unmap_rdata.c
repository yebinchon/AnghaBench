
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int rx; int tx; scalar_t__ mbuf_len; scalar_t__ mbuf_data_paddr; scalar_t__ mbuf_hdr_paddr; scalar_t__ mbuf_free; int * mb; int * mbuf_map; int mbuf_dmat; } ;
struct xgbe_prv_data {int dummy; } ;


 int bus_dmamap_destroy (int ,int *) ;
 int m_freem (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void xgbe_unmap_rdata(struct xgbe_prv_data *pdata,
        struct xgbe_ring_data *rdata)
{

 if (rdata->mbuf_map != ((void*)0))
  bus_dmamap_destroy(rdata->mbuf_dmat, rdata->mbuf_map);

 if (rdata->mbuf_free)
  m_freem(rdata->mb);

 rdata->mb = ((void*)0);
 rdata->mbuf_free = 0;
 rdata->mbuf_hdr_paddr = 0;
 rdata->mbuf_data_paddr = 0;
 rdata->mbuf_len = 0;

 memset(&rdata->tx, 0, sizeof(rdata->tx));
 memset(&rdata->rx, 0, sizeof(rdata->rx));
}
