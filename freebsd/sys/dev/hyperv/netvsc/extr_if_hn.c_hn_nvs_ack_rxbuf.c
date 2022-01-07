
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_channel {int dummy; } ;
struct hn_rx_ring {scalar_t__ hn_ack_failed; int hn_ifp; } ;
struct hn_nvs_rndis_ack {int nvs_status; int nvs_type; } ;
typedef int ack ;


 int DELAY (int) ;
 int EAGAIN ;
 int HN_NVS_STATUS_OK ;
 int HN_NVS_TYPE_RNDIS_ACK ;
 int VMBUS_CHANPKT_FLAG_NONE ;
 int VMBUS_CHANPKT_TYPE_COMP ;
 scalar_t__ __predict_false (int) ;
 int if_printf (int ,char*) ;
 int vmbus_chan_send (struct vmbus_channel*,int ,int ,struct hn_nvs_rndis_ack*,int,int ) ;

__attribute__((used)) static void
hn_nvs_ack_rxbuf(struct hn_rx_ring *rxr, struct vmbus_channel *chan,
    uint64_t tid)
{
 struct hn_nvs_rndis_ack ack;
 int retries, error;

 ack.nvs_type = HN_NVS_TYPE_RNDIS_ACK;
 ack.nvs_status = HN_NVS_STATUS_OK;

 retries = 0;
again:
 error = vmbus_chan_send(chan, VMBUS_CHANPKT_TYPE_COMP,
     VMBUS_CHANPKT_FLAG_NONE, &ack, sizeof(ack), tid);
 if (__predict_false(error == EAGAIN)) {






  if (rxr->hn_ack_failed == 0)
   if_printf(rxr->hn_ifp, "RXBUF ack retry\n");
  rxr->hn_ack_failed++;
  retries++;
  if (retries < 10) {
   DELAY(100);
   goto again;
  }

  if_printf(rxr->hn_ifp, "RXBUF ack failed\n");
 }
}
