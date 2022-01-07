
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_chanpkt_hdr {int cph_type; } ;
struct vmbus_channel {int dummy; } ;
struct hn_softc {int dummy; } ;
struct hn_rx_ring {int hn_pktbuf_len; int hn_txr; TYPE_1__* hn_ifp; struct vmbus_chanpkt_hdr* hn_pktbuf; } ;
struct TYPE_2__ {struct hn_softc* if_softc; } ;


 int EAGAIN ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;



 scalar_t__ __predict_false (int) ;
 int free (struct vmbus_chanpkt_hdr*,int ) ;
 int hn_chan_rollup (struct hn_rx_ring*,int ) ;
 int hn_nvs_handle_comp (struct hn_softc*,struct vmbus_channel*,struct vmbus_chanpkt_hdr*) ;
 int hn_nvs_handle_notify (struct hn_softc*,struct vmbus_chanpkt_hdr*) ;
 int hn_nvs_handle_rxbuf (struct hn_rx_ring*,struct vmbus_channel*,struct vmbus_chanpkt_hdr*) ;
 int if_printf (TYPE_1__*,char*,int,...) ;
 void* malloc (int,int ,int ) ;
 int vmbus_chan_recv_pkt (struct vmbus_channel*,struct vmbus_chanpkt_hdr*,int*) ;

__attribute__((used)) static void
hn_chan_callback(struct vmbus_channel *chan, void *xrxr)
{
 struct hn_rx_ring *rxr = xrxr;
 struct hn_softc *sc = rxr->hn_ifp->if_softc;

 for (;;) {
  struct vmbus_chanpkt_hdr *pkt = rxr->hn_pktbuf;
  int error, pktlen;

  pktlen = rxr->hn_pktbuf_len;
  error = vmbus_chan_recv_pkt(chan, pkt, &pktlen);
  if (__predict_false(error == ENOBUFS)) {
   void *nbuf;
   int nlen;
   nlen = rxr->hn_pktbuf_len * 2;
   while (nlen < pktlen)
    nlen *= 2;
   nbuf = malloc(nlen, M_DEVBUF, M_WAITOK);

   if_printf(rxr->hn_ifp, "expand pktbuf %d -> %d\n",
       rxr->hn_pktbuf_len, nlen);

   free(rxr->hn_pktbuf, M_DEVBUF);
   rxr->hn_pktbuf = nbuf;
   rxr->hn_pktbuf_len = nlen;

   continue;
  } else if (__predict_false(error == EAGAIN)) {

   break;
  }
  KASSERT(!error, ("vmbus_chan_recv_pkt failed: %d", error));

  switch (pkt->cph_type) {
  case 130:
   hn_nvs_handle_comp(sc, chan, pkt);
   break;

  case 128:
   hn_nvs_handle_rxbuf(rxr, chan, pkt);
   break;

  case 129:
   hn_nvs_handle_notify(sc, pkt);
   break;

  default:
   if_printf(rxr->hn_ifp, "unknown chan pkt %u\n",
       pkt->cph_type);
   break;
  }
 }
 hn_chan_rollup(rxr, rxr->hn_txr);
}
