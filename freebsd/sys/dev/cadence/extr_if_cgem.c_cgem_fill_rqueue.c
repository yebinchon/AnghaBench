
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rcvif; void* len; } ;
struct mbuf {TYPE_1__ m_pkthdr; void* m_len; } ;
struct cgem_softc {scalar_t__ rxring_queued; scalar_t__ rxbufs; size_t rxring_hd_ptr; TYPE_2__* rxring; int ** rxring_m_dmamap; int mbuf_dma_tag; struct mbuf** rxring_m; int rxdmamapfails; int ifp; } ;
struct TYPE_7__ {int ds_addr; } ;
typedef TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {int addr; scalar_t__ ctl; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_NUM_RX_DESCS ;
 int CGEM_RXDESC_WRAP ;
 void* MCLBYTES ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int TX_MAX_DMA_SEGS ;
 scalar_t__ bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_destroy (int ,int *) ;
 scalar_t__ bus_dmamap_load_mbuf_sg (int ,int *,struct mbuf*,TYPE_3__*,int*,int ) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int m_free (struct mbuf*) ;
 struct mbuf* m_getcl (int ,int ,int ) ;

__attribute__((used)) static void
cgem_fill_rqueue(struct cgem_softc *sc)
{
 struct mbuf *m = ((void*)0);
 bus_dma_segment_t segs[TX_MAX_DMA_SEGS];
 int nsegs;

 CGEM_ASSERT_LOCKED(sc);

 while (sc->rxring_queued < sc->rxbufs) {

  m = m_getcl(M_NOWAIT, MT_DATA, M_PKTHDR);
  if (m == ((void*)0))
   break;

  m->m_len = MCLBYTES;
  m->m_pkthdr.len = MCLBYTES;
  m->m_pkthdr.rcvif = sc->ifp;


  if (bus_dmamap_create(sc->mbuf_dma_tag, 0,
         &sc->rxring_m_dmamap[sc->rxring_hd_ptr])) {
   sc->rxdmamapfails++;
   m_free(m);
   break;
  }
  if (bus_dmamap_load_mbuf_sg(sc->mbuf_dma_tag,
         sc->rxring_m_dmamap[sc->rxring_hd_ptr], m,
         segs, &nsegs, BUS_DMA_NOWAIT)) {
   sc->rxdmamapfails++;
   bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->rxring_m_dmamap[sc->rxring_hd_ptr]);
   sc->rxring_m_dmamap[sc->rxring_hd_ptr] = ((void*)0);
   m_free(m);
   break;
  }
  sc->rxring_m[sc->rxring_hd_ptr] = m;


  bus_dmamap_sync(sc->mbuf_dma_tag,
    sc->rxring_m_dmamap[sc->rxring_hd_ptr],
    BUS_DMASYNC_PREREAD);


  sc->rxring[sc->rxring_hd_ptr].ctl = 0;
  if (sc->rxring_hd_ptr == CGEM_NUM_RX_DESCS - 1) {
   sc->rxring[sc->rxring_hd_ptr].addr = segs[0].ds_addr |
    CGEM_RXDESC_WRAP;
   sc->rxring_hd_ptr = 0;
  } else
   sc->rxring[sc->rxring_hd_ptr++].addr = segs[0].ds_addr;

  sc->rxring_queued++;
 }
}
