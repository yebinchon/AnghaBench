
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_24__ {scalar_t__ lro_flushed; scalar_t__ lro_queued; scalar_t__ lro_bad_csum; } ;
struct TYPE_23__ {scalar_t__ cnt; } ;
struct TYPE_22__ {scalar_t__ cnt; } ;
struct TYPE_21__ {scalar_t__ stall; scalar_t__ defrag; scalar_t__ wake; scalar_t__ deactivate; scalar_t__ activate; scalar_t__ queue_active; scalar_t__ pkt_done; scalar_t__ done; scalar_t__ req; } ;
struct TYPE_20__ {int bus_addr; } ;
struct TYPE_27__ {scalar_t__ cnt; scalar_t__ idx; TYPE_1__ dma; TYPE_9__* entry; } ;
struct mxge_slice_state {int * fw_stats; TYPE_5__ lc; TYPE_4__ rx_small; TYPE_3__ rx_big; TYPE_2__ tx; TYPE_8__ rx_done; int volatile* irq_claim; } ;
struct TYPE_26__ {int rx_ring_size; int num_slices; int rdma_tags_available; int throttle; int dev; int pause; TYPE_6__* ifp; struct mxge_slice_state* ss; int intr_coal_delay; int volatile* intr_coal_delay_ptr; scalar_t__ sram; int volatile* irq_deassert; } ;
typedef TYPE_7__ mxge_softc_t ;
typedef TYPE_8__ mxge_rx_done_t ;
struct TYPE_28__ {int data0; int data2; int data1; } ;
typedef TYPE_9__ mxge_cmd_t ;
typedef int cmd ;
struct TYPE_25__ {int if_flags; } ;


 int ENXIO ;
 int IFF_PROMISC ;
 int MXGEFW_CMD_ENABLE_RSS_QUEUES ;
 int MXGEFW_CMD_GET_INTR_COAL_DELAY_OFFSET ;
 int MXGEFW_CMD_GET_IRQ_ACK_OFFSET ;
 int MXGEFW_CMD_GET_IRQ_DEASSERT_OFFSET ;
 int MXGEFW_CMD_GET_MAX_RSS_QUEUES ;
 int MXGEFW_CMD_RESET ;
 int MXGEFW_CMD_SET_INTRQ_DMA ;
 int MXGEFW_CMD_SET_INTRQ_SIZE ;
 int MXGEFW_CMD_SET_THROTTLE_FACTOR ;
 int MXGEFW_DMA_TEST ;
 int MXGEFW_SLICE_ENABLE_MULTIPLE_TX_QUEUES ;
 int MXGEFW_SLICE_INTR_MODE_ONE_PER_SLICE ;
 int MXGE_HIGHPART_TO_U32 (int ) ;
 int MXGE_LOWPART_TO_U32 (int ) ;
 int bzero (int *,int) ;
 int device_printf (int ,char*) ;
 int volatile htobe32 (int ) ;
 int memset (TYPE_9__*,int ,int) ;
 int mxge_change_pause (TYPE_7__*,int ) ;
 int mxge_change_promisc (TYPE_7__*,int) ;
 int mxge_dma_test (TYPE_7__*,int ) ;
 int mxge_dummy_rdma (TYPE_7__*,int) ;
 int mxge_send_cmd (TYPE_7__*,int ,TYPE_9__*) ;
 int mxge_set_multicast_list (TYPE_7__*) ;
 int mxge_update_mac_address (TYPE_7__*) ;

__attribute__((used)) static int
mxge_reset(mxge_softc_t *sc, int interrupts_setup)
{
 struct mxge_slice_state *ss;
 mxge_rx_done_t *rx_done;
 volatile uint32_t *irq_claim;
 mxge_cmd_t cmd;
 int slice, status;



 memset(&cmd, 0, sizeof (cmd));
 status = mxge_send_cmd(sc, MXGEFW_CMD_RESET, &cmd);
 if (status != 0) {
  device_printf(sc->dev, "failed reset\n");
  return ENXIO;
 }

 mxge_dummy_rdma(sc, 1);



 cmd.data0 = sc->rx_ring_size;
 status = mxge_send_cmd(sc, MXGEFW_CMD_SET_INTRQ_SIZE, &cmd);
 if (sc->num_slices > 1) {

  status = mxge_send_cmd(sc, MXGEFW_CMD_GET_MAX_RSS_QUEUES,
        &cmd);
  if (status != 0) {
   device_printf(sc->dev,
          "failed to get number of slices\n");
   return status;
  }




  cmd.data0 = sc->num_slices;
  cmd.data1 = MXGEFW_SLICE_INTR_MODE_ONE_PER_SLICE;



  status = mxge_send_cmd(sc, MXGEFW_CMD_ENABLE_RSS_QUEUES,
        &cmd);
  if (status != 0) {
   device_printf(sc->dev,
          "failed to set number of slices\n");
   return status;
  }
 }


 if (interrupts_setup) {

  for (slice = 0; slice < sc->num_slices; slice++) {
   rx_done = &sc->ss[slice].rx_done;
   memset(rx_done->entry, 0, sc->rx_ring_size);
   cmd.data0 = MXGE_LOWPART_TO_U32(rx_done->dma.bus_addr);
   cmd.data1 = MXGE_HIGHPART_TO_U32(rx_done->dma.bus_addr);
   cmd.data2 = slice;
   status |= mxge_send_cmd(sc,
      MXGEFW_CMD_SET_INTRQ_DMA,
      &cmd);
  }
 }

 status |= mxge_send_cmd(sc,
    MXGEFW_CMD_GET_INTR_COAL_DELAY_OFFSET, &cmd);


 sc->intr_coal_delay_ptr = (volatile uint32_t *)(sc->sram + cmd.data0);

 status |= mxge_send_cmd(sc, MXGEFW_CMD_GET_IRQ_ACK_OFFSET, &cmd);
 irq_claim = (volatile uint32_t *)(sc->sram + cmd.data0);


 status |= mxge_send_cmd(sc, MXGEFW_CMD_GET_IRQ_DEASSERT_OFFSET,
    &cmd);
 sc->irq_deassert = (volatile uint32_t *)(sc->sram + cmd.data0);
 if (status != 0) {
  device_printf(sc->dev, "failed set interrupt parameters\n");
  return status;
 }


 *sc->intr_coal_delay_ptr = htobe32(sc->intr_coal_delay);



 (void) mxge_dma_test(sc, MXGEFW_DMA_TEST);

 for (slice = 0; slice < sc->num_slices; slice++) {
  ss = &sc->ss[slice];

  ss->irq_claim = irq_claim + (2 * slice);

  ss->rx_done.idx = 0;
  ss->rx_done.cnt = 0;
  ss->tx.req = 0;
  ss->tx.done = 0;
  ss->tx.pkt_done = 0;
  ss->tx.queue_active = 0;
  ss->tx.activate = 0;
  ss->tx.deactivate = 0;
  ss->tx.wake = 0;
  ss->tx.defrag = 0;
  ss->tx.stall = 0;
  ss->rx_big.cnt = 0;
  ss->rx_small.cnt = 0;
  ss->lc.lro_bad_csum = 0;
  ss->lc.lro_queued = 0;
  ss->lc.lro_flushed = 0;
  if (ss->fw_stats != ((void*)0)) {
   bzero(ss->fw_stats, sizeof *ss->fw_stats);
  }
 }
 sc->rdma_tags_available = 15;
 status = mxge_update_mac_address(sc);
 mxge_change_promisc(sc, sc->ifp->if_flags & IFF_PROMISC);
 mxge_change_pause(sc, sc->pause);
 mxge_set_multicast_list(sc);
 if (sc->throttle) {
  cmd.data0 = sc->throttle;
  if (mxge_send_cmd(sc, MXGEFW_CMD_SET_THROTTLE_FACTOR,
      &cmd)) {
   device_printf(sc->dev,
          "can't enable throttle\n");
  }
 }
 return status;
}
