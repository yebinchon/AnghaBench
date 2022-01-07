
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_time_event_notif {int status; int unique_id; } ;
struct iwm_softc {scalar_t__ sc_time_event_uid; } ;
struct TYPE_2__ {scalar_t__ code; } ;
struct iwm_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;


 int IWM_DEBUG_TE ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,...) ;
 scalar_t__ IWM_TIME_EVENT_NOTIFICATION ;
 int iwm_rx_packet_payload_len (struct iwm_rx_packet*) ;
 scalar_t__ le32toh (int ) ;

__attribute__((used)) static int
iwm_mvm_te_notif(struct iwm_softc *sc, struct iwm_rx_packet *pkt,
    void *data)
{
 struct iwm_time_event_notif *resp;
 int resp_len = iwm_rx_packet_payload_len(pkt);

 if (pkt->hdr.code != IWM_TIME_EVENT_NOTIFICATION ||
     resp_len != sizeof(*resp)) {
  IWM_DPRINTF(sc, IWM_DEBUG_TE,
      "Invalid TIME_EVENT_NOTIFICATION response\n");
  return 1;
 }

 resp = (void *)pkt->data;


 if (le32toh(resp->unique_id) != sc->sc_time_event_uid)
  return 0;

 IWM_DPRINTF(sc, IWM_DEBUG_TE,
     "TIME_EVENT_NOTIFICATION response - UID = 0x%x\n",
     sc->sc_time_event_uid);
 if (!resp->status) {
  IWM_DPRINTF(sc, IWM_DEBUG_TE,
      "TIME_EVENT_NOTIFICATION received but not executed\n");
 }

 return 1;
}
