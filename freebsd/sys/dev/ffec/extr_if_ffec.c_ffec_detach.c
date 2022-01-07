
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ffec_softc {int is_detaching; int * mem_res; int * irq_res; int ** intr_cookie; int * txdesc_tag; int * txdesc_map; int * txbuf_tag; TYPE_2__* txbuf_map; int * rxdesc_tag; int * rxdesc_map; int * rxbuf_tag; TYPE_1__* rxbuf_map; int ifp; int ffec_callout; scalar_t__ is_attached; } ;
typedef int device_t ;
typedef int * bus_dmamap_t ;
struct TYPE_4__ {int * map; } ;
struct TYPE_3__ {int mbuf; int * map; } ;


 int FFEC_LOCK (struct ffec_softc*) ;
 int FFEC_LOCK_DESTROY (struct ffec_softc*) ;
 int FFEC_UNLOCK (struct ffec_softc*) ;
 int MAX_IRQ_COUNT ;
 int RX_DESC_COUNT ;
 int SYS_RES_MEMORY ;
 int TX_DESC_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int callout_drain (int *) ;
 struct ffec_softc* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int ffec_stop_locked (struct ffec_softc*) ;
 int irq_res_spec ;
 int m_freem (int ) ;

__attribute__((used)) static int
ffec_detach(device_t dev)
{
 struct ffec_softc *sc;
 bus_dmamap_t map;
 int idx, irq;






 sc = device_get_softc(dev);

 if (sc->is_attached) {
  FFEC_LOCK(sc);
  sc->is_detaching = 1;
  ffec_stop_locked(sc);
  FFEC_UNLOCK(sc);
  callout_drain(&sc->ffec_callout);
  ether_ifdetach(sc->ifp);
 }




 for (idx = 0; idx < RX_DESC_COUNT; ++idx) {
  if ((map = sc->rxbuf_map[idx].map) != ((void*)0)) {
   bus_dmamap_unload(sc->rxbuf_tag, map);
   bus_dmamap_destroy(sc->rxbuf_tag, map);
   m_freem(sc->rxbuf_map[idx].mbuf);
  }
 }
 if (sc->rxbuf_tag != ((void*)0))
  bus_dma_tag_destroy(sc->rxbuf_tag);
 if (sc->rxdesc_map != ((void*)0)) {
  bus_dmamap_unload(sc->rxdesc_tag, sc->rxdesc_map);
  bus_dmamap_destroy(sc->rxdesc_tag, sc->rxdesc_map);
 }
 if (sc->rxdesc_tag != ((void*)0))
 bus_dma_tag_destroy(sc->rxdesc_tag);


 for (idx = 0; idx < TX_DESC_COUNT; ++idx) {
  if ((map = sc->txbuf_map[idx].map) != ((void*)0)) {

   bus_dmamap_destroy(sc->txbuf_tag, map);
  }
 }
 if (sc->txbuf_tag != ((void*)0))
  bus_dma_tag_destroy(sc->txbuf_tag);
 if (sc->txdesc_map != ((void*)0)) {
  bus_dmamap_unload(sc->txdesc_tag, sc->txdesc_map);
  bus_dmamap_destroy(sc->txdesc_tag, sc->txdesc_map);
 }
 if (sc->txdesc_tag != ((void*)0))
  bus_dma_tag_destroy(sc->txdesc_tag);


 for (irq = 0; irq < MAX_IRQ_COUNT; ++irq) {
  if (sc->intr_cookie[irq] != ((void*)0)) {
   bus_teardown_intr(dev, sc->irq_res[irq],
       sc->intr_cookie[irq]);
  }
 }
 bus_release_resources(dev, irq_res_spec, sc->irq_res);

 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 FFEC_LOCK_DESTROY(sc);
 return (0);
}
