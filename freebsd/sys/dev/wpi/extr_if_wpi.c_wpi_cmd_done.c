
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; } ;
struct wpi_tx_ring {scalar_t__ queued; TYPE_1__ cmd_dma; int data_dmat; struct wpi_tx_cmd* cmd; struct wpi_tx_data* data; } ;
struct wpi_tx_data {int * m; int map; } ;
struct wpi_tx_cmd {scalar_t__ data; } ;
struct wpi_softc {int sc_update_tx_ring; int sc_update_rx_ring; struct wpi_tx_ring* txq; } ;
struct wpi_rx_desc {size_t qid; size_t idx; scalar_t__ type; int len; int flags; } ;
struct wpi_pmgt_cmd {int flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int DPRINTF (struct wpi_softc*,int ,char*,size_t,size_t,int ,int ,int ) ;
 int KASSERT (int,char*) ;
 size_t WPI_CMD_QUEUE_NUM ;
 scalar_t__ WPI_CMD_SET_POWER_MODE ;
 int WPI_DEBUG_CMD ;
 int WPI_PS_ALLOW_SLEEP ;
 size_t WPI_RX_DESC_QID_MSK ;
 int WPI_TXQ_LOCK (struct wpi_softc*) ;
 int WPI_TXQ_UNLOCK (struct wpi_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int m_freem (int *) ;
 int wakeup (struct wpi_tx_cmd*) ;
 int wpi_cmd_str (scalar_t__) ;
 int wpi_update_rx_ring ;
 int wpi_update_rx_ring_ps ;
 int wpi_update_tx_ring ;
 int wpi_update_tx_ring_ps ;

__attribute__((used)) static void
wpi_cmd_done(struct wpi_softc *sc, struct wpi_rx_desc *desc)
{
 struct wpi_tx_ring *ring = &sc->txq[WPI_CMD_QUEUE_NUM];
 struct wpi_tx_data *data;
 struct wpi_tx_cmd *cmd;

 DPRINTF(sc, WPI_DEBUG_CMD, "cmd notification qid %x idx %d flags %x "
       "type %s len %d\n", desc->qid, desc->idx,
       desc->flags, wpi_cmd_str(desc->type),
       le32toh(desc->len));

 if ((desc->qid & WPI_RX_DESC_QID_MSK) != WPI_CMD_QUEUE_NUM)
  return;

 KASSERT(ring->queued == 0, ("ring->queued must be 0"));

 data = &ring->data[desc->idx];
 cmd = &ring->cmd[desc->idx];


 if (data->m != ((void*)0)) {
  bus_dmamap_sync(ring->data_dmat, data->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->data_dmat, data->map);
  m_freem(data->m);
  data->m = ((void*)0);
 }

 wakeup(cmd);

 if (desc->type == WPI_CMD_SET_POWER_MODE) {
  struct wpi_pmgt_cmd *pcmd = (struct wpi_pmgt_cmd *)cmd->data;

  bus_dmamap_sync(ring->data_dmat, ring->cmd_dma.map,
      BUS_DMASYNC_POSTREAD);

  WPI_TXQ_LOCK(sc);
  if (le16toh(pcmd->flags) & WPI_PS_ALLOW_SLEEP) {
   sc->sc_update_rx_ring = wpi_update_rx_ring_ps;
   sc->sc_update_tx_ring = wpi_update_tx_ring_ps;
  } else {
   sc->sc_update_rx_ring = wpi_update_rx_ring;
   sc->sc_update_tx_ring = wpi_update_tx_ring;
  }
  WPI_TXQ_UNLOCK(sc);
 }
}
