
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_softc {int sc_notif_wait; } ;
struct iwm_notification_wait {int dummy; } ;


 int IWM_DEBUG_SCAN ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int IWM_LOCK (struct iwm_softc*) ;


 int IWM_UCODE_TLV_CAPA_UMAC_SCAN ;
 int IWM_UNLOCK (struct iwm_softc*) ;
 int hz ;
 scalar_t__ iwm_fw_has_capa (struct iwm_softc*,int ) ;
 int iwm_init_notification_wait (int ,struct iwm_notification_wait*,int const*,int ,int *,int *) ;
 int iwm_mvm_lmac_scan_abort (struct iwm_softc*) ;
 int iwm_mvm_umac_scan_abort (struct iwm_softc*) ;
 int iwm_remove_notification (int ,struct iwm_notification_wait*) ;
 int iwm_wait_notification (int ,struct iwm_notification_wait*,int ) ;
 int nitems (int const*) ;

int
iwm_mvm_scan_stop_wait(struct iwm_softc *sc)
{
 struct iwm_notification_wait wait_scan_done;
 static const uint16_t scan_done_notif[] = { 129,
         128, };
 int ret;

 iwm_init_notification_wait(sc->sc_notif_wait, &wait_scan_done,
       scan_done_notif, nitems(scan_done_notif),
       ((void*)0), ((void*)0));

 IWM_DPRINTF(sc, IWM_DEBUG_SCAN, "Preparing to stop scan\n");

 if (iwm_fw_has_capa(sc, IWM_UCODE_TLV_CAPA_UMAC_SCAN))
  ret = iwm_mvm_umac_scan_abort(sc);
 else
  ret = iwm_mvm_lmac_scan_abort(sc);

 if (ret) {
  IWM_DPRINTF(sc, IWM_DEBUG_SCAN, "couldn't stop scan\n");
  iwm_remove_notification(sc->sc_notif_wait, &wait_scan_done);
  return ret;
 }

 IWM_UNLOCK(sc);
 ret = iwm_wait_notification(sc->sc_notif_wait, &wait_scan_done, hz);
 IWM_LOCK(sc);

 return ret;
}
