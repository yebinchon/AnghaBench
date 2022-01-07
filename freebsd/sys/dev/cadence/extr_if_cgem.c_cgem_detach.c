
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {scalar_t__ rxring_physaddr; scalar_t__ txring_physaddr; int * mbuf_dma_tag; int * desc_dma_tag; int ** txring_m_dmamap; int * txring; int txring_dma_map; int ** rxring_m_dmamap; int * rxring; int rxring_dma_map; int * irq_res; scalar_t__ intrhand; int * mem_res; int * miibus; int ifp; int tick_ch; } ;
typedef int device_t ;


 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_LOCK_DESTROY (struct cgem_softc*) ;
 int CGEM_NUM_RX_DESCS ;
 int CGEM_NUM_TX_DESCS ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int ENODEV ;
 int IFF_UP ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int callout_drain (int *) ;
 int cgem_stop (struct cgem_softc*) ;
 int device_delete_child (int ,int *) ;
 struct cgem_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (int ) ;
 int if_setflagbits (int ,int ,int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
cgem_detach(device_t dev)
{
 struct cgem_softc *sc = device_get_softc(dev);
 int i;

 if (sc == ((void*)0))
  return (ENODEV);

 if (device_is_attached(dev)) {
  CGEM_LOCK(sc);
  cgem_stop(sc);
  CGEM_UNLOCK(sc);
  callout_drain(&sc->tick_ch);
  if_setflagbits(sc->ifp, 0, IFF_UP);
  ether_ifdetach(sc->ifp);
 }

 if (sc->miibus != ((void*)0)) {
  device_delete_child(dev, sc->miibus);
  sc->miibus = ((void*)0);
 }


 if (sc->mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
         rman_get_rid(sc->mem_res), sc->mem_res);
  sc->mem_res = ((void*)0);
 }
 if (sc->irq_res != ((void*)0)) {
  if (sc->intrhand)
   bus_teardown_intr(dev, sc->irq_res, sc->intrhand);
  bus_release_resource(dev, SYS_RES_IRQ,
         rman_get_rid(sc->irq_res), sc->irq_res);
  sc->irq_res = ((void*)0);
 }


 if (sc->rxring != ((void*)0)) {
  if (sc->rxring_physaddr != 0) {
   bus_dmamap_unload(sc->desc_dma_tag,
       sc->rxring_dma_map);
   sc->rxring_physaddr = 0;
  }
  bus_dmamem_free(sc->desc_dma_tag, sc->rxring,
    sc->rxring_dma_map);
  sc->rxring = ((void*)0);
  for (i = 0; i < CGEM_NUM_RX_DESCS; i++)
   if (sc->rxring_m_dmamap[i] != ((void*)0)) {
    bus_dmamap_destroy(sc->mbuf_dma_tag,
         sc->rxring_m_dmamap[i]);
    sc->rxring_m_dmamap[i] = ((void*)0);
   }
 }
 if (sc->txring != ((void*)0)) {
  if (sc->txring_physaddr != 0) {
   bus_dmamap_unload(sc->desc_dma_tag,
       sc->txring_dma_map);
   sc->txring_physaddr = 0;
  }
  bus_dmamem_free(sc->desc_dma_tag, sc->txring,
    sc->txring_dma_map);
  sc->txring = ((void*)0);
  for (i = 0; i < CGEM_NUM_TX_DESCS; i++)
   if (sc->txring_m_dmamap[i] != ((void*)0)) {
    bus_dmamap_destroy(sc->mbuf_dma_tag,
         sc->txring_m_dmamap[i]);
    sc->txring_m_dmamap[i] = ((void*)0);
   }
 }
 if (sc->desc_dma_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->desc_dma_tag);
  sc->desc_dma_tag = ((void*)0);
 }
 if (sc->mbuf_dma_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->mbuf_dma_tag);
  sc->mbuf_dma_tag = ((void*)0);
 }

 bus_generic_detach(dev);

 CGEM_LOCK_DESTROY(sc);

 return (0);
}
