
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct mrsas_softc {scalar_t__ msix_vectors; int fw_outstanding; int sim_lock; scalar_t__ remove_in_progress; } ;


 int DELAY (int) ;
 scalar_t__ MFI_DCMD_TIMEOUT_OCR ;
 int MFI_STATE_FAULT ;
 int MFI_STATE_MASK ;
 int MRSAS_OCR ;
 int MRSAS_RESET_NOTICE_INTERVAL ;
 int MRSAS_RESET_WAIT_TIME ;
 int mrsas_atomic_read (int *) ;
 int mrsas_complete_cmd (struct mrsas_softc*,int) ;
 int mrsas_dprint (struct mrsas_softc*,int ,char*,...) ;
 int mrsas_read_reg_with_retries (struct mrsas_softc*,int ) ;
 int mrsas_reg_set ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int offsetof (int ,int ) ;
 int outbound_scratch_pad ;

int
mrsas_wait_for_outstanding(struct mrsas_softc *sc, u_int8_t check_reason)
{
 int i, outstanding, retval = 0;
 u_int32_t fw_state, count, MSIxIndex;


 for (i = 0; i < MRSAS_RESET_WAIT_TIME; i++) {
  if (sc->remove_in_progress) {
   mrsas_dprint(sc, MRSAS_OCR,
       "Driver remove or shutdown called.\n");
   retval = 1;
   goto out;
  }

  fw_state = mrsas_read_reg_with_retries(sc, offsetof(mrsas_reg_set,
      outbound_scratch_pad)) & MFI_STATE_MASK;
  if (fw_state == MFI_STATE_FAULT) {
   mrsas_dprint(sc, MRSAS_OCR,
       "Found FW in FAULT state, will reset adapter.\n");
   count = sc->msix_vectors > 0 ? sc->msix_vectors : 1;
   mtx_unlock(&sc->sim_lock);
   for (MSIxIndex = 0; MSIxIndex < count; MSIxIndex++)
    mrsas_complete_cmd(sc, MSIxIndex);
   mtx_lock(&sc->sim_lock);
   retval = 1;
   goto out;
  }
  if (check_reason == MFI_DCMD_TIMEOUT_OCR) {
   mrsas_dprint(sc, MRSAS_OCR,
       "DCMD IO TIMEOUT detected, will reset adapter.\n");
   retval = 1;
   goto out;
  }
  outstanding = mrsas_atomic_read(&sc->fw_outstanding);
  if (!outstanding)
   goto out;

  if (!(i % MRSAS_RESET_NOTICE_INTERVAL)) {
   mrsas_dprint(sc, MRSAS_OCR, "[%2d]waiting for %d "
       "commands to complete\n", i, outstanding);
   count = sc->msix_vectors > 0 ? sc->msix_vectors : 1;
   mtx_unlock(&sc->sim_lock);
   for (MSIxIndex = 0; MSIxIndex < count; MSIxIndex++)
    mrsas_complete_cmd(sc, MSIxIndex);
   mtx_lock(&sc->sim_lock);
  }
  DELAY(1000 * 1000);
 }

 if (mrsas_atomic_read(&sc->fw_outstanding)) {
  mrsas_dprint(sc, MRSAS_OCR,
      " pending commands remain after waiting,"
      " will reset adapter.\n");
  retval = 1;
 }
out:
 return retval;
}
