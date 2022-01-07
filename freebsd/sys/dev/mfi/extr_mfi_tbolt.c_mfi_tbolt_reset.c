
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int mfi_flags; int (* mfi_read_fw_status ) (struct mfi_softc*) ;scalar_t__ disableOnlineCtrlReset; int adpreset; int mfi_io_lock; scalar_t__ last_reply_idx; scalar_t__ MFA_enabled; scalar_t__ issuepend_done; int mfi_dev; scalar_t__ hw_crit_error; } ;


 int MFI_FLAGS_TBOLT ;
 int MFI_FWSTATE_FAULT ;
 int device_printf (int ,char*) ;
 scalar_t__ mfi_fw_reset_test ;
 int mfi_process_fw_state_chg_isr (void*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct mfi_softc*) ;

int
mfi_tbolt_reset(struct mfi_softc *sc)
{
 uint32_t fw_state;

 mtx_lock(&sc->mfi_io_lock);
 if (sc->hw_crit_error) {
  device_printf(sc->mfi_dev, "HW CRITICAL ERROR\n");
  mtx_unlock(&sc->mfi_io_lock);
  return 1;
 }

 if (sc->mfi_flags & MFI_FLAGS_TBOLT) {
  fw_state = sc->mfi_read_fw_status(sc);
  if ((fw_state & MFI_FWSTATE_FAULT) == MFI_FWSTATE_FAULT ||
      mfi_fw_reset_test) {
   if ((sc->disableOnlineCtrlReset == 0)
       && (sc->adpreset == 0)) {
    device_printf(sc->mfi_dev, "Adapter RESET "
        "condition is detected\n");
    sc->adpreset = 1;
    sc->issuepend_done = 0;
    sc->MFA_enabled = 0;
    sc->last_reply_idx = 0;
    mfi_process_fw_state_chg_isr((void *) sc);
   }
   mtx_unlock(&sc->mfi_io_lock);
   return 0;
  }
 }
 mtx_unlock(&sc->mfi_io_lock);
 return 1;
}
