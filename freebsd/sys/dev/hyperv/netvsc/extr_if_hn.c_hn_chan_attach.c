
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int dummy; } ;
struct vmbus_chan_br {int cbr_rxsz; int cbr_txsz; int cbr_paddr; int cbr; } ;
struct hn_tx_ring {int hn_tx_flags; struct vmbus_channel* hn_chan; } ;
struct hn_softc {int hn_rx_ring_inuse; int hn_tx_ring_inuse; int hn_ifp; struct hn_tx_ring* hn_tx_ring; struct hn_rx_ring* hn_rx_ring; } ;
struct TYPE_2__ {int hv_paddr; } ;
struct hn_rx_ring {int hn_rx_flags; TYPE_1__ hn_br_dma; int hn_br; struct vmbus_channel* hn_chan; } ;


 int EISCONN ;
 int HN_RING_IDX2CPU (struct hn_softc*,int) ;
 int HN_RXBR_SIZE ;
 int HN_RX_FLAG_ATTACHED ;
 int HN_RX_FLAG_BR_REF ;
 int HN_TXBR_SIZE ;
 int HN_TX_FLAG_ATTACHED ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int hn_chan_callback ;
 int if_printf (int ,char*,int,...) ;
 int vmbus_chan_cpu_set (struct vmbus_channel*,int ) ;
 int vmbus_chan_id (struct vmbus_channel*) ;
 int vmbus_chan_open_br (struct vmbus_channel*,struct vmbus_chan_br*,int *,int ,int ,struct hn_rx_ring*) ;
 int vmbus_chan_subidx (struct vmbus_channel*) ;

__attribute__((used)) static int
hn_chan_attach(struct hn_softc *sc, struct vmbus_channel *chan)
{
 struct vmbus_chan_br cbr;
 struct hn_rx_ring *rxr;
 struct hn_tx_ring *txr = ((void*)0);
 int idx, error;

 idx = vmbus_chan_subidx(chan);




 KASSERT(idx >= 0 && idx < sc->hn_rx_ring_inuse,
     ("invalid channel index %d, should > 0 && < %d",
      idx, sc->hn_rx_ring_inuse));
 rxr = &sc->hn_rx_ring[idx];
 KASSERT((rxr->hn_rx_flags & HN_RX_FLAG_ATTACHED) == 0,
     ("RX ring %d already attached", idx));
 rxr->hn_rx_flags |= HN_RX_FLAG_ATTACHED;
 rxr->hn_chan = chan;

 if (bootverbose) {
  if_printf(sc->hn_ifp, "link RX ring %d to chan%u\n",
      idx, vmbus_chan_id(chan));
 }

 if (idx < sc->hn_tx_ring_inuse) {
  txr = &sc->hn_tx_ring[idx];
  KASSERT((txr->hn_tx_flags & HN_TX_FLAG_ATTACHED) == 0,
      ("TX ring %d already attached", idx));
  txr->hn_tx_flags |= HN_TX_FLAG_ATTACHED;

  txr->hn_chan = chan;
  if (bootverbose) {
   if_printf(sc->hn_ifp, "link TX ring %d to chan%u\n",
       idx, vmbus_chan_id(chan));
  }
 }


 vmbus_chan_cpu_set(chan, HN_RING_IDX2CPU(sc, idx));




 cbr.cbr = rxr->hn_br;
 cbr.cbr_paddr = rxr->hn_br_dma.hv_paddr;
 cbr.cbr_txsz = HN_TXBR_SIZE;
 cbr.cbr_rxsz = HN_RXBR_SIZE;
 error = vmbus_chan_open_br(chan, &cbr, ((void*)0), 0, hn_chan_callback, rxr);
 if (error) {
  if (error == EISCONN) {
   if_printf(sc->hn_ifp, "bufring is connected after "
       "chan%u open failure\n", vmbus_chan_id(chan));
   rxr->hn_rx_flags |= HN_RX_FLAG_BR_REF;
  } else {
   if_printf(sc->hn_ifp, "open chan%u failed: %d\n",
       vmbus_chan_id(chan), error);
  }
 }
 return (error);
}
