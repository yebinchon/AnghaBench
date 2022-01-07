
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_flags; } ;
struct rtwn_rx_stat_pci {int rxdw0; } ;
struct rtwn_rx_ring {size_t cur; int desc_map; int desc_dmat; struct rtwn_rx_data* rx_data; struct rtwn_rx_stat_pci* desc; } ;
struct rtwn_rx_data {int paddr; } ;
struct rtwn_pci_softc {int pc_rx_buf; struct rtwn_rx_ring rx_ring; } ;


 int BUS_DMASYNC_POSTREAD ;
 int KASSERT (int ,char*) ;
 int MJUMPAGESIZE ;
 int RTWN_PCI_RX_LIST_COUNT ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int RTWN_RUNNING ;
 int RTWN_RXDW0_OWN ;



 int bus_dmamap_sync (int ,int ,int ) ;
 int le32toh (int ) ;
 int rtwn_classify_intr (struct rtwn_softc*,int ,int) ;
 int rtwn_pci_c2h_report (struct rtwn_pci_softc*,int) ;
 int rtwn_pci_rx_buf_copy (struct rtwn_pci_softc*) ;
 int rtwn_pci_rx_frame (struct rtwn_pci_softc*) ;
 int rtwn_pci_setup_rx_desc (struct rtwn_pci_softc*,struct rtwn_rx_stat_pci*,int ,int ,size_t) ;
 int rtwn_pci_tx_report (struct rtwn_pci_softc*,int) ;

__attribute__((used)) static void
rtwn_pci_rx_done(struct rtwn_softc *sc)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_rx_ring *ring = &pc->rx_ring;
 struct rtwn_rx_stat_pci *rx_desc;
 struct rtwn_rx_data *rx_data;
 int len;

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_POSTREAD);

 for (;;) {
  rx_desc = &ring->desc[ring->cur];
  rx_data = &ring->rx_data[ring->cur];

  if (le32toh(rx_desc->rxdw0) & RTWN_RXDW0_OWN)
   break;

  len = rtwn_pci_rx_buf_copy(pc);

  switch (rtwn_classify_intr(sc, pc->pc_rx_buf, len)) {
  case 130:
   rtwn_pci_rx_frame(pc);
   break;
  case 128:
   rtwn_pci_tx_report(pc, len);
   break;
  case 129:
   rtwn_pci_c2h_report(pc, len);
   break;
  default:

   KASSERT(0, ("unknown Rx classification code"));
   break;
  }


  rtwn_pci_setup_rx_desc(pc, rx_desc, rx_data->paddr,
      MJUMPAGESIZE, ring->cur);

  if (!(sc->sc_flags & RTWN_RUNNING))
   return;


  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_POSTREAD);

  if (le32toh(rx_desc->rxdw0) & RTWN_RXDW0_OWN)
   ring->cur = (ring->cur + 1) % RTWN_PCI_RX_LIST_COUNT;
 }
}
