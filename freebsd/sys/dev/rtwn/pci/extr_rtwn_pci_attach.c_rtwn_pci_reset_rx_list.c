
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_rx_ring {scalar_t__ cur; int * desc; struct rtwn_rx_data* rx_data; } ;
struct rtwn_rx_data {int paddr; } ;
struct rtwn_pci_softc {struct rtwn_rx_ring rx_ring; } ;


 int MJUMPAGESIZE ;
 int RTWN_PCI_RX_LIST_COUNT ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int rtwn_pci_setup_rx_desc (struct rtwn_pci_softc*,int *,int ,int ,int) ;

__attribute__((used)) static void
rtwn_pci_reset_rx_list(struct rtwn_softc *sc)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_rx_ring *rx_ring = &pc->rx_ring;
 struct rtwn_rx_data *rx_data;
 int i;

 for (i = 0; i < RTWN_PCI_RX_LIST_COUNT; i++) {
  rx_data = &rx_ring->rx_data[i];
  rtwn_pci_setup_rx_desc(pc, &rx_ring->desc[i],
      rx_data->paddr, MJUMPAGESIZE, i);
 }
 rx_ring->cur = 0;
}
