
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct rtwn_tx_ring {int data_dmat; scalar_t__ paddr; scalar_t__ desc; struct rtwn_tx_data* tx_data; int desc_map; int desc_dmat; } ;
struct rtwn_tx_data {int * ni; int * m; int map; } ;
struct rtwn_softc {int txdesc_len; int sc_dev; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;
typedef int bus_size_t ;


 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MJUMPAGESIZE ;
 int PAGE_SIZE ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int RTWN_PCI_TX_LIST_COUNT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,int,int ,scalar_t__*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamem_alloc (int ,scalar_t__*,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int rtwn_pci_dma_map_addr ;
 int rtwn_pci_free_tx_list (struct rtwn_softc*,int) ;
 int rtwn_pci_setup_tx_desc (struct rtwn_pci_softc*,void*,scalar_t__) ;

__attribute__((used)) static int
rtwn_pci_alloc_tx_list(struct rtwn_softc *sc, int qid)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_tx_ring *tx_ring = &pc->tx_ring[qid];
 bus_size_t size;
 int i, error;

 size = sc->txdesc_len * RTWN_PCI_TX_LIST_COUNT;
 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     size, 1, size, 0, ((void*)0), ((void*)0), &tx_ring->desc_dmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create tx ring DMA tag\n");
  goto fail;
 }

 error = bus_dmamem_alloc(tx_ring->desc_dmat, &tx_ring->desc,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &tx_ring->desc_map);
 if (error != 0) {
  device_printf(sc->sc_dev, "can't map tx ring DMA memory\n");
  goto fail;
 }
 error = bus_dmamap_load(tx_ring->desc_dmat, tx_ring->desc_map,
     tx_ring->desc, size, rtwn_pci_dma_map_addr, &tx_ring->paddr,
     BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not load desc DMA map\n");
  goto fail;
 }
 bus_dmamap_sync(tx_ring->desc_dmat, tx_ring->desc_map,
     BUS_DMASYNC_PREWRITE);

 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MJUMPAGESIZE, 1, MJUMPAGESIZE, 0, ((void*)0), ((void*)0), &tx_ring->data_dmat);
 if (error != 0) {
  device_printf(sc->sc_dev, "could not create tx buf DMA tag\n");
  goto fail;
 }

 for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
  struct rtwn_tx_data *tx_data = &tx_ring->tx_data[i];
  void *tx_desc = (uint8_t *)tx_ring->desc + sc->txdesc_len * i;
  uint32_t next_desc_addr = tx_ring->paddr +
      sc->txdesc_len * ((i + 1) % RTWN_PCI_TX_LIST_COUNT);

  rtwn_pci_setup_tx_desc(pc, tx_desc, next_desc_addr);

  error = bus_dmamap_create(tx_ring->data_dmat, 0, &tx_data->map);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "could not create tx buf DMA map\n");
   return (error);
  }
  tx_data->m = ((void*)0);
  tx_data->ni = ((void*)0);
 }
 return (0);

fail:
 rtwn_pci_free_tx_list(sc, qid);
 return (error);
}
