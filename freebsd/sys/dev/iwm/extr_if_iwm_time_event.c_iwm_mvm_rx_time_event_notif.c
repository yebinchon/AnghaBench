
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_time_event_notif {int action; int unique_id; } ;
struct iwm_softc {int dummy; } ;
struct iwm_rx_packet {scalar_t__ data; } ;


 int IWM_DEBUG_TE ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int ,int ) ;
 int iwm_mvm_te_handle_notif (struct iwm_softc*,struct iwm_time_event_notif*) ;
 int le32toh (int ) ;

void
iwm_mvm_rx_time_event_notif(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
 struct iwm_time_event_notif *notif = (void *)pkt->data;

 IWM_DPRINTF(sc, IWM_DEBUG_TE,
     "Time event notification - UID = 0x%x action %d\n",
     le32toh(notif->unique_id),
     le32toh(notif->action));

 iwm_mvm_te_handle_notif(sc, notif);
}
