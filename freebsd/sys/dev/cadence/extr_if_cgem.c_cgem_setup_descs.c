
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgem_tx_desc {int dummy; } ;
struct cgem_softc {scalar_t__ txring_queued; scalar_t__ txring_tl_ptr; scalar_t__ txring_hd_ptr; TYPE_2__* txring; int ** txring_m_dmamap; int ** txring_m; int txring_physaddr; int txring_dma_map; int desc_dma_tag; scalar_t__ rxring_queued; scalar_t__ rxring_tl_ptr; scalar_t__ rxring_hd_ptr; TYPE_1__* rxring; int ** rxring_m_dmamap; int ** rxring_m; int rxring_physaddr; int rxring_dma_map; int mbuf_dma_tag; int sc_mtx; int dev; } ;
struct cgem_rx_desc {int dummy; } ;
struct TYPE_4__ {int ctl; scalar_t__ addr; } ;
struct TYPE_3__ {int addr; scalar_t__ ctl; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CGEM_NUM_RX_DESCS ;
 int CGEM_NUM_TX_DESCS ;
 int CGEM_RXDESC_OWN ;
 int CGEM_RXDESC_WRAP ;
 int CGEM_TXDESC_USED ;
 int CGEM_TXDESC_WRAP ;
 int MAX_DESC_RING_SIZE ;
 int MCLBYTES ;
 int TX_MAX_DMA_SEGS ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int cgem_getaddr ;

__attribute__((used)) static int
cgem_setup_descs(struct cgem_softc *sc)
{
 int i, err;

 sc->txring = ((void*)0);
 sc->rxring = ((void*)0);



 err = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MAX_DESC_RING_SIZE,
     1,
     MAX_DESC_RING_SIZE,
     0,
     busdma_lock_mutex,
     &sc->sc_mtx,
     &sc->desc_dma_tag);
 if (err)
  return (err);


 err = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     TX_MAX_DMA_SEGS,
     MCLBYTES,
     0,
     busdma_lock_mutex,
     &sc->sc_mtx,
     &sc->mbuf_dma_tag);
 if (err)
  return (err);


 err = bus_dmamem_alloc(sc->desc_dma_tag,
          (void **)&sc->rxring,
          BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
          &sc->rxring_dma_map);
 if (err)
  return (err);


 err = bus_dmamap_load(sc->desc_dma_tag, sc->rxring_dma_map,
         (void *)sc->rxring,
         CGEM_NUM_RX_DESCS*sizeof(struct cgem_rx_desc),
         cgem_getaddr, &sc->rxring_physaddr,
         BUS_DMA_NOWAIT);
 if (err)
  return (err);


 for (i = 0; i < CGEM_NUM_RX_DESCS; i++) {
  sc->rxring[i].addr = CGEM_RXDESC_OWN;
  sc->rxring[i].ctl = 0;
  sc->rxring_m[i] = ((void*)0);
  sc->rxring_m_dmamap[i] = ((void*)0);
 }
 sc->rxring[CGEM_NUM_RX_DESCS - 1].addr |= CGEM_RXDESC_WRAP;

 sc->rxring_hd_ptr = 0;
 sc->rxring_tl_ptr = 0;
 sc->rxring_queued = 0;


 err = bus_dmamem_alloc(sc->desc_dma_tag,
          (void **)&sc->txring,
          BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
          &sc->txring_dma_map);
 if (err)
  return (err);


 err = bus_dmamap_load(sc->desc_dma_tag, sc->txring_dma_map,
         (void *)sc->txring,
         CGEM_NUM_TX_DESCS*sizeof(struct cgem_tx_desc),
         cgem_getaddr, &sc->txring_physaddr,
         BUS_DMA_NOWAIT);
 if (err)
  return (err);


 for (i = 0; i < CGEM_NUM_TX_DESCS; i++) {
  sc->txring[i].addr = 0;
  sc->txring[i].ctl = CGEM_TXDESC_USED;
  sc->txring_m[i] = ((void*)0);
  sc->txring_m_dmamap[i] = ((void*)0);
 }
 sc->txring[CGEM_NUM_TX_DESCS - 1].ctl |= CGEM_TXDESC_WRAP;

 sc->txring_hd_ptr = 0;
 sc->txring_tl_ptr = 0;
 sc->txring_queued = 0;

 return (0);
}
