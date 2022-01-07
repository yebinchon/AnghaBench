
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_chanpkt_hdr {scalar_t__ cph_hlen; scalar_t__ cph_tlen; } ;
struct vmbus_channel {int ch_rxbr; } ;


 int EIO ;
 int ENOBUFS ;
 int KASSERT (int,char*) ;
 int VMBUS_CHANPKT_GETLEN (scalar_t__) ;
 scalar_t__ VMBUS_CHANPKT_HLEN_MIN ;
 scalar_t__ __predict_false (int) ;
 int vmbus_chan_printf (struct vmbus_channel*,char*,scalar_t__,...) ;
 int vmbus_rxbr_peek (int *,struct vmbus_chanpkt_hdr*,int) ;
 int vmbus_rxbr_read (int *,struct vmbus_chanpkt_hdr*,int,int) ;

int
vmbus_chan_recv_pkt(struct vmbus_channel *chan,
    struct vmbus_chanpkt_hdr *pkt, int *pktlen0)
{
 int error, pktlen, pkt_hlen;

 pkt_hlen = sizeof(*pkt);
 error = vmbus_rxbr_peek(&chan->ch_rxbr, pkt, pkt_hlen);
 if (error)
  return (error);

 if (__predict_false(pkt->cph_hlen < VMBUS_CHANPKT_HLEN_MIN)) {
  vmbus_chan_printf(chan, "invalid hlen %u\n", pkt->cph_hlen);

  return (EIO);
 }
 if (__predict_false(pkt->cph_hlen > pkt->cph_tlen)) {
  vmbus_chan_printf(chan, "invalid hlen %u and tlen %u\n",
      pkt->cph_hlen, pkt->cph_tlen);

  return (EIO);
 }

 pktlen = VMBUS_CHANPKT_GETLEN(pkt->cph_tlen);
 if (*pktlen0 < pktlen) {

  *pktlen0 = pktlen;
  return (ENOBUFS);
 }
 *pktlen0 = pktlen;





 error = vmbus_rxbr_read(&chan->ch_rxbr, pkt + 1,
     pktlen - pkt_hlen, pkt_hlen);
 KASSERT(!error, ("vmbus_rxbr_read failed"));

 return (0);
}
