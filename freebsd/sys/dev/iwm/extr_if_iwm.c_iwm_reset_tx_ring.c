
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; int tag; int size; } ;
struct iwm_tx_ring {int qid; scalar_t__ cur; scalar_t__ queued; TYPE_1__ desc_dma; int desc; int data_dmat; struct iwm_tx_data* data; } ;
struct iwm_tx_data {int * m; int map; } ;
struct iwm_softc {int qfullmsk; scalar_t__ cmd_hold_nic_awake; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int IWM_MVM_CMD_QUEUE ;
 int IWM_TX_RING_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int iwm_pcie_clear_cmd_in_flight (struct iwm_softc*) ;
 int m_freem (int *) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
iwm_reset_tx_ring(struct iwm_softc *sc, struct iwm_tx_ring *ring)
{
 int i;

 for (i = 0; i < IWM_TX_RING_COUNT; i++) {
  struct iwm_tx_data *data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
 }

 memset(ring->desc, 0, ring->desc_dma.size);
 bus_dmamap_sync(ring->desc_dma.tag, ring->desc_dma.map,
     BUS_DMASYNC_PREWRITE);
 sc->qfullmsk &= ~(1 << ring->qid);
 ring->queued = 0;
 ring->cur = 0;

 if (ring->qid == IWM_MVM_CMD_QUEUE && sc->cmd_hold_nic_awake)
  iwm_pcie_clear_cmd_in_flight(sc);
}
