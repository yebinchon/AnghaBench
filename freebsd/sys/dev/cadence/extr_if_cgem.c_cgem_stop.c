
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgem_softc {scalar_t__ mii_media_active; scalar_t__ rxring_queued; scalar_t__ rxring_tl_ptr; scalar_t__ rxring_hd_ptr; TYPE_2__* rxring; int ** rxring_m; int ** rxring_m_dmamap; int mbuf_dma_tag; scalar_t__ txring_queued; scalar_t__ txring_tl_ptr; scalar_t__ txring_hd_ptr; TYPE_1__* txring; int ** txring_m; int ** txring_m_dmamap; int tick_ch; } ;
struct TYPE_4__ {int addr; scalar_t__ ctl; } ;
struct TYPE_3__ {int ctl; scalar_t__ addr; } ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_NUM_RX_DESCS ;
 int CGEM_NUM_TX_DESCS ;
 int CGEM_RXDESC_OWN ;
 int CGEM_RXDESC_WRAP ;
 int CGEM_TXDESC_USED ;
 int CGEM_TXDESC_WRAP ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_unload (int ,int *) ;
 int callout_stop (int *) ;
 int cgem_reset (struct cgem_softc*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
cgem_stop(struct cgem_softc *sc)
{
 int i;

 CGEM_ASSERT_LOCKED(sc);

 callout_stop(&sc->tick_ch);


 cgem_reset(sc);


 for (i = 0; i < CGEM_NUM_TX_DESCS; i++) {
  sc->txring[i].ctl = CGEM_TXDESC_USED;
  sc->txring[i].addr = 0;
  if (sc->txring_m[i]) {

   bus_dmamap_unload(sc->mbuf_dma_tag,
       sc->txring_m_dmamap[i]);
   bus_dmamap_destroy(sc->mbuf_dma_tag,
        sc->txring_m_dmamap[i]);
   sc->txring_m_dmamap[i] = ((void*)0);
   m_freem(sc->txring_m[i]);
   sc->txring_m[i] = ((void*)0);
  }
 }
 sc->txring[CGEM_NUM_TX_DESCS - 1].ctl |= CGEM_TXDESC_WRAP;

 sc->txring_hd_ptr = 0;
 sc->txring_tl_ptr = 0;
 sc->txring_queued = 0;


 for (i = 0; i < CGEM_NUM_RX_DESCS; i++) {
  sc->rxring[i].addr = CGEM_RXDESC_OWN;
  sc->rxring[i].ctl = 0;
  if (sc->rxring_m[i]) {

   bus_dmamap_unload(sc->mbuf_dma_tag,
      sc->rxring_m_dmamap[i]);
   bus_dmamap_destroy(sc->mbuf_dma_tag,
       sc->rxring_m_dmamap[i]);
   sc->rxring_m_dmamap[i] = ((void*)0);

   m_freem(sc->rxring_m[i]);
   sc->rxring_m[i] = ((void*)0);
  }
 }
 sc->rxring[CGEM_NUM_RX_DESCS - 1].addr |= CGEM_RXDESC_WRAP;

 sc->rxring_hd_ptr = 0;
 sc->rxring_tl_ptr = 0;
 sc->rxring_queued = 0;


 sc->mii_media_active = 0;
}
