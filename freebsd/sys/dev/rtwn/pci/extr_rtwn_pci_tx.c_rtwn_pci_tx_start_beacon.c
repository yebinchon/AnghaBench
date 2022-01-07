
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rtwn_tx_ring {int data_dmat; int desc_map; int desc_dmat; scalar_t__ desc; struct rtwn_tx_data* tx_data; } ;
struct rtwn_tx_desc_common {int flags0; scalar_t__ pktlen; int offset; } ;
struct rtwn_tx_data {int map; } ;
struct rtwn_softc {int txdesc_len; int sc_dev; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef int bus_dma_segment_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int KASSERT (int,char*) ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int RTWN_FLAGS0_OWN ;
 size_t RTWN_PCI_BEACON_QUEUE ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,int *,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ htole16 (int ) ;
 int rtwn_dump_tx_desc (struct rtwn_softc*,struct rtwn_tx_desc_common*) ;
 int rtwn_pci_copy_tx_desc (struct rtwn_pci_softc*,struct rtwn_tx_desc_common*,int *) ;
 int rtwn_pci_tx_postsetup (struct rtwn_pci_softc*,struct rtwn_tx_desc_common*,int *) ;

__attribute__((used)) static int
rtwn_pci_tx_start_beacon(struct rtwn_softc *sc, struct mbuf *m,
    uint8_t *tx_desc, int id)
{
 struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
 struct rtwn_tx_ring *ring;
 struct rtwn_tx_data *data;
 struct rtwn_tx_desc_common *txd;
 bus_dma_segment_t segs[1];
 int nsegs, error, own;

 RTWN_ASSERT_LOCKED(sc);

 KASSERT(id == 0 || id == 1, ("bogus vap id %d\n", id));

 ring = &pc->tx_ring[RTWN_PCI_BEACON_QUEUE];
 data = &ring->tx_data[id];
 txd = (struct rtwn_tx_desc_common *)
     ((uint8_t *)ring->desc + id * sc->txdesc_len);

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
     BUS_DMASYNC_POSTREAD);
 own = !!(txd->flags0 & RTWN_FLAGS0_OWN);
 error = 0;
 if (!own || txd->pktlen != htole16(m->m_pkthdr.len)) {
  if (!own) {

   rtwn_pci_copy_tx_desc(pc, txd, tx_desc);
   txd->offset = sc->txdesc_len;
  } else {

   bus_dmamap_unload(ring->data_dmat, data->map);
  }

  error = bus_dmamap_load_mbuf_sg(ring->data_dmat,
      data->map, m, segs, &nsegs, BUS_DMA_NOWAIT);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "can't map beacon (error %d)\n", error);
   txd->flags0 &= ~RTWN_FLAGS0_OWN;
   goto end;
  }

  txd->pktlen = htole16(m->m_pkthdr.len);
  rtwn_pci_tx_postsetup(pc, txd, segs);
  txd->flags0 |= RTWN_FLAGS0_OWN;
end:
  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_PREWRITE);
 }


 rtwn_dump_tx_desc(sc, txd);

 bus_dmamap_sync(ring->data_dmat, data->map, BUS_DMASYNC_PREWRITE);

 return (0);
}
