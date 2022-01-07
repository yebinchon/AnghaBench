
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_tx_ring {int * desc; int data_dmat; struct iwn_tx_data* data; } ;
struct iwn_tx_data {int * m; int map; } ;
struct iwn_softc {int sc_flags; struct iwn_tx_ring* txq; } ;
struct iwn_rx_desc {int qid; size_t idx; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int IWN_CMD_QUEUE_NUM ;
 int IWN_FLAG_PAN_SUPPORT ;
 int IWN_PAN_CMD_QUEUE ;
 int IWN_RX_DESC_QID_MSK ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
iwn_cmd_done(struct iwn_softc *sc, struct iwn_rx_desc *desc)
{
 struct iwn_tx_ring *ring;
 struct iwn_tx_data *data;
 int cmd_queue_num;

 if (sc->sc_flags & IWN_FLAG_PAN_SUPPORT)
  cmd_queue_num = IWN_PAN_CMD_QUEUE;
 else
  cmd_queue_num = IWN_CMD_QUEUE_NUM;

 if ((desc->qid & IWN_RX_DESC_QID_MSK) != cmd_queue_num)
  return;

 ring = &sc->txq[cmd_queue_num];
 data = &ring->data[desc->idx];


 if (data->m != ((void*)0)) {
  bus_dmamap_sync(ring->data_dmat, data->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->data_dmat, data->map);
  m_freem(data->m);
  data->m = ((void*)0);
 }
 wakeup(&ring->desc[desc->idx]);
}
