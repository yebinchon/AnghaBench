
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {size_t idx; TYPE_1__* entry; } ;
struct TYPE_7__ {scalar_t__ pkt_done; } ;
struct mxge_slice_state {scalar_t__* irq_claim; TYPE_4__ rx_done; TYPE_2__ tx; TYPE_5__* fw_stats; TYPE_3__* sc; } ;
typedef TYPE_2__ mxge_tx_ring_t ;
struct TYPE_8__ {scalar_t__ link_state; int need_media_probe; scalar_t__ rdma_tags_available; int ifp; int down_cnt; int dev; struct mxge_slice_state* ss; scalar_t__ legacy_irq; scalar_t__* irq_deassert; } ;
typedef TYPE_3__ mxge_softc_t ;
typedef TYPE_4__ mxge_rx_done_t ;
struct TYPE_10__ {int valid; int send_done_count; scalar_t__ link_up; int rdma_tags_available; scalar_t__ link_down; scalar_t__ stats_updated; } ;
typedef TYPE_5__ mcp_irq_data_t ;
struct TYPE_6__ {scalar_t__ length; } ;


 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ be32toh (int) ;
 int device_printf (int ,char*,...) ;
 int if_link_state_change (int ,int ) ;
 int mxge_clean_rx_done (struct mxge_slice_state*) ;
 scalar_t__ mxge_deassert_wait ;
 int mxge_tx_done (struct mxge_slice_state*,int) ;
 scalar_t__ mxge_verbose ;
 int wmb () ;

__attribute__((used)) static void
mxge_intr(void *arg)
{
 struct mxge_slice_state *ss = arg;
 mxge_softc_t *sc = ss->sc;
 mcp_irq_data_t *stats = ss->fw_stats;
 mxge_tx_ring_t *tx = &ss->tx;
 mxge_rx_done_t *rx_done = &ss->rx_done;
 uint32_t send_done_count;
 uint8_t valid;





 if (ss != sc->ss) {
  mxge_clean_rx_done(ss);
  *ss->irq_claim = be32toh(3);
  return;
 }



 if (!stats->valid) {
  return;
 }
 valid = stats->valid;

 if (sc->legacy_irq) {

  *sc->irq_deassert = 0;
  if (!mxge_deassert_wait)

   stats->valid = 0;
 } else {
  stats->valid = 0;
 }


 do {

  send_done_count = be32toh(stats->send_done_count);
  while ((send_done_count != tx->pkt_done) ||
         (rx_done->entry[rx_done->idx].length != 0)) {
   if (send_done_count != tx->pkt_done)
    mxge_tx_done(ss, (int)send_done_count);
   mxge_clean_rx_done(ss);
   send_done_count = be32toh(stats->send_done_count);
  }
  if (sc->legacy_irq && mxge_deassert_wait)
   wmb();
 } while (*((volatile uint8_t *) &stats->valid));


 if (__predict_false((ss == sc->ss) && stats->stats_updated)) {
  if (sc->link_state != stats->link_up) {
   sc->link_state = stats->link_up;
   if (sc->link_state) {
    if_link_state_change(sc->ifp, LINK_STATE_UP);
    if (mxge_verbose)
     device_printf(sc->dev, "link up\n");
   } else {
    if_link_state_change(sc->ifp, LINK_STATE_DOWN);
    if (mxge_verbose)
     device_printf(sc->dev, "link down\n");
   }
   sc->need_media_probe = 1;
  }
  if (sc->rdma_tags_available !=
      be32toh(stats->rdma_tags_available)) {
   sc->rdma_tags_available =
    be32toh(stats->rdma_tags_available);
   device_printf(sc->dev, "RDMA timed out! %d tags "
          "left\n", sc->rdma_tags_available);
  }

  if (stats->link_down) {
   sc->down_cnt += stats->link_down;
   sc->link_state = 0;
   if_link_state_change(sc->ifp, LINK_STATE_DOWN);
  }
 }


 if (valid & 0x1)
     *ss->irq_claim = be32toh(3);
 *(ss->irq_claim + 1) = be32toh(3);
}
