
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rndis_msghdr {scalar_t__ rm_type; } ;
struct hn_rx_ring {TYPE_1__* hn_ifp; } ;
struct TYPE_2__ {int if_softc; } ;


 scalar_t__ REMOTE_NDIS_INDICATE_STATUS_MSG ;
 scalar_t__ REMOTE_NDIS_PACKET_MSG ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 int hn_rndis_rx_ctrl (int ,void const*,int) ;
 int hn_rndis_rx_data (struct hn_rx_ring*,void const*,int) ;
 int hn_rndis_rx_status (int ,void const*,int) ;
 int if_printf (TYPE_1__*,char*) ;

__attribute__((used)) static __inline void
hn_rndis_rxpkt(struct hn_rx_ring *rxr, const void *data, int dlen)
{
 const struct rndis_msghdr *hdr;

 if (__predict_false(dlen < sizeof(*hdr))) {
  if_printf(rxr->hn_ifp, "invalid RNDIS msg\n");
  return;
 }
 hdr = data;

 if (__predict_true(hdr->rm_type == REMOTE_NDIS_PACKET_MSG)) {

  hn_rndis_rx_data(rxr, data, dlen);

  return;
 }

 if (hdr->rm_type == REMOTE_NDIS_INDICATE_STATUS_MSG)
  hn_rndis_rx_status(rxr->hn_ifp->if_softc, data, dlen);
 else
  hn_rndis_rx_ctrl(rxr->hn_ifp->if_softc, data, dlen);
}
