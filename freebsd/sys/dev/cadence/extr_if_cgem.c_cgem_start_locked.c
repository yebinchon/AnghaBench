
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct cgem_softc {int txring_queued; size_t txring_hd_ptr; int net_ctl_shadow; struct mbuf** txring_m; TYPE_1__* txring; int ** txring_m_dmamap; int mbuf_dma_tag; int txdmamapfails; int txdefrags; int txdefragfails; int txfull; } ;
typedef int if_t ;
struct TYPE_5__ {int ds_len; int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int ctl; int addr; } ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_NET_CTRL ;
 int CGEM_NET_CTRL_START_TX ;
 int CGEM_NUM_TX_DESCS ;
 int CGEM_TXDESC_LAST_BUF ;
 int CGEM_TXDESC_WRAP ;
 int EFBIG ;
 int ETHER_BPF_MTAP (int ,struct mbuf*) ;
 int IFF_DRV_OACTIVE ;
 int M_NOWAIT ;
 int TX_MAX_DMA_SEGS ;
 int WR4 (struct cgem_softc*,int ,int) ;
 scalar_t__ bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_load_mbuf_sg (int ,int *,struct mbuf*,TYPE_2__*,int*,int ) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int cgem_clean_tx (struct cgem_softc*) ;
 struct mbuf* if_dequeue (int ) ;
 int if_getdrvflags (int ) ;
 scalar_t__ if_getsoftc (int ) ;
 int if_setdrvflagbits (int ,int,int ) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
cgem_start_locked(if_t ifp)
{
 struct cgem_softc *sc = (struct cgem_softc *) if_getsoftc(ifp);
 struct mbuf *m;
 bus_dma_segment_t segs[TX_MAX_DMA_SEGS];
 uint32_t ctl;
 int i, nsegs, wrap, err;

 CGEM_ASSERT_LOCKED(sc);

 if ((if_getdrvflags(ifp) & IFF_DRV_OACTIVE) != 0)
  return;

 for (;;) {

  if (sc->txring_queued >=
      CGEM_NUM_TX_DESCS - TX_MAX_DMA_SEGS * 2) {


   cgem_clean_tx(sc);


   if (sc->txring_queued >=
       CGEM_NUM_TX_DESCS - TX_MAX_DMA_SEGS * 2) {
    if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
    sc->txfull++;
    break;
   }
  }


  m = if_dequeue(ifp);
  if (m == ((void*)0))
   break;


  if (bus_dmamap_create(sc->mbuf_dma_tag, 0,
         &sc->txring_m_dmamap[sc->txring_hd_ptr])) {
   m_freem(m);
   sc->txdmamapfails++;
   continue;
  }
  err = bus_dmamap_load_mbuf_sg(sc->mbuf_dma_tag,
          sc->txring_m_dmamap[sc->txring_hd_ptr],
          m, segs, &nsegs, BUS_DMA_NOWAIT);
  if (err == EFBIG) {

   struct mbuf *m2 = m_defrag(m, M_NOWAIT);

   if (m2 == ((void*)0)) {
    sc->txdefragfails++;
    m_freem(m);
    bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->txring_m_dmamap[sc->txring_hd_ptr]);
    sc->txring_m_dmamap[sc->txring_hd_ptr] = ((void*)0);
    continue;
   }
   m = m2;
   err = bus_dmamap_load_mbuf_sg(sc->mbuf_dma_tag,
          sc->txring_m_dmamap[sc->txring_hd_ptr],
          m, segs, &nsegs, BUS_DMA_NOWAIT);
   sc->txdefrags++;
  }
  if (err) {

   m_freem(m);
   bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->txring_m_dmamap[sc->txring_hd_ptr]);
   sc->txring_m_dmamap[sc->txring_hd_ptr] = ((void*)0);
   sc->txdmamapfails++;
   continue;
  }
  sc->txring_m[sc->txring_hd_ptr] = m;


  bus_dmamap_sync(sc->mbuf_dma_tag,
    sc->txring_m_dmamap[sc->txring_hd_ptr],
    BUS_DMASYNC_PREWRITE);


  wrap = sc->txring_hd_ptr + nsegs + TX_MAX_DMA_SEGS >=
   CGEM_NUM_TX_DESCS;




  for (i = nsegs - 1; i >= 0; i--) {

   sc->txring[sc->txring_hd_ptr + i].addr =
    segs[i].ds_addr;


   ctl = segs[i].ds_len;
   if (i == nsegs - 1) {
    ctl |= CGEM_TXDESC_LAST_BUF;
    if (wrap)
     ctl |= CGEM_TXDESC_WRAP;
   }
   sc->txring[sc->txring_hd_ptr + i].ctl = ctl;

   if (i != 0)
    sc->txring_m[sc->txring_hd_ptr + i] = ((void*)0);
  }

  if (wrap)
   sc->txring_hd_ptr = 0;
  else
   sc->txring_hd_ptr += nsegs;
  sc->txring_queued += nsegs;


  WR4(sc, CGEM_NET_CTRL, sc->net_ctl_shadow |
      CGEM_NET_CTRL_START_TX);


  ETHER_BPF_MTAP(ifp, m);
 }
}
