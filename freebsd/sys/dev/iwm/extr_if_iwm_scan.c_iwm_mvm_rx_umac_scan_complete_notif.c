
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_umac_scan_complete {scalar_t__ ebs_status; int status; int uid; } ;
struct iwm_softc {int last_ebs_successful; } ;
struct iwm_rx_packet {scalar_t__ data; } ;


 int FALSE ;
 int IWM_DEBUG_SCAN ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int ,int ,int ) ;
 scalar_t__ IWM_SCAN_EBS_INACTIVE ;
 scalar_t__ IWM_SCAN_EBS_SUCCESS ;
 int iwm_mvm_ebs_status_str (scalar_t__) ;
 int iwm_mvm_offload_status_str (int ) ;
 int le32toh (int ) ;

void
iwm_mvm_rx_umac_scan_complete_notif(struct iwm_softc *sc,
    struct iwm_rx_packet *pkt)
{
 struct iwm_umac_scan_complete *notif = (void *)pkt->data;

 IWM_DPRINTF(sc, IWM_DEBUG_SCAN,
     "Scan completed, uid %u, status %s, EBS status %s\n",
     le32toh(notif->uid),
     iwm_mvm_offload_status_str(notif->status),
     iwm_mvm_ebs_status_str(notif->ebs_status));

 if (notif->ebs_status != IWM_SCAN_EBS_SUCCESS &&
     notif->ebs_status != IWM_SCAN_EBS_INACTIVE)
  sc->last_ebs_successful = FALSE;
}
