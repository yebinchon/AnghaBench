
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mgb_ring_data {struct mgb_ring_desc* ring; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; int ctx; } ;
struct TYPE_5__ {void* high; void* low; } ;
struct mgb_ring_desc {void* sts; TYPE_1__ addr; void* ctl; } ;
typedef int qidx_t ;
typedef int if_softc_ctx_t ;
typedef TYPE_2__* if_pkt_info_t ;
struct TYPE_7__ {int ds_len; int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {scalar_t__ ipi_qsidx; int ipi_pidx; int ipi_nsegs; int ipi_new_pidx; TYPE_3__* ipi_segs; } ;


 int CSR_TRANSLATE_ADDR_HIGH32 (int ) ;
 int CSR_TRANSLATE_ADDR_LOW32 (int ) ;
 int KASSERT (int,char*) ;
 int MGB_DESC_CTL_BUFLEN_MASK ;
 int MGB_DESC_CTL_FCS ;
 int MGB_DESC_FRAME_LEN_MASK ;
 int MGB_NEXT_RING_IDX (int) ;
 int MGB_TX_DESC_CTL_FS ;
 int MGB_TX_DESC_CTL_LS ;
 void* htole32 (int) ;
 int iflib_get_softc_ctx (int ) ;

__attribute__((used)) static int
mgb_isc_txd_encap(void *xsc , if_pkt_info_t ipi)
{
 struct mgb_softc *sc;
 if_softc_ctx_t scctx;
 struct mgb_ring_data *rdata;
 struct mgb_ring_desc *txd;
 bus_dma_segment_t *segs;
 qidx_t pidx, nsegs;
 int i;

 KASSERT(ipi->ipi_qsidx == 0,
     ("tried to refill TX Channel %d.\n", ipi->ipi_qsidx));
 sc = xsc;
 scctx = iflib_get_softc_ctx(sc->ctx);
 rdata = &sc->tx_ring_data;

 pidx = ipi->ipi_pidx;
 segs = ipi->ipi_segs;
 nsegs = ipi->ipi_nsegs;


 for (i = 0; i < nsegs; ++i) {
  KASSERT(nsegs == 1, ("Multisegment packet !!!!!\n"));
  txd = &rdata->ring[pidx];
  txd->ctl = htole32(
      (segs[i].ds_len & MGB_DESC_CTL_BUFLEN_MASK ) |





      MGB_TX_DESC_CTL_FS | MGB_TX_DESC_CTL_LS |
      MGB_DESC_CTL_FCS);
  txd->addr.low = htole32(CSR_TRANSLATE_ADDR_LOW32(
      segs[i].ds_addr));
  txd->addr.high = htole32(CSR_TRANSLATE_ADDR_HIGH32(
      segs[i].ds_addr));
  txd->sts = htole32(
      (segs[i].ds_len << 16) & MGB_DESC_FRAME_LEN_MASK);
  pidx = MGB_NEXT_RING_IDX(pidx);
 }
 ipi->ipi_new_pidx = pidx;
 return (0);
}
