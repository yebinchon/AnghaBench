
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mfi_softc {int adpreset; int hw_crit_error; int issuepend_done; int mfi_dev; int last_seq_num; TYPE_1__* mfi_map_sync_cm; TYPE_1__* mfi_aen_cm; int (* mfi_enable_intr ) (struct mfi_softc*) ;scalar_t__ last_reply_idx; scalar_t__ mfi_max_fw_cmds; int (* mfi_disable_intr ) (struct mfi_softc*) ;int (* mfi_adp_reset ) (struct mfi_softc*) ;} ;
struct TYPE_3__ {int cm_data; } ;


 int DELAY (int) ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_RFPI ;
 int MFI_RPI ;
 int MFI_RSR ;
 int MFI_WRITE4 (struct mfi_softc*,int ,scalar_t__) ;
 int M_MFIBUF ;
 int device_printf (int ,char*,...) ;
 int free (int ,int ) ;
 int mfi_aen_setup (struct mfi_softc*,int ) ;
 int mfi_issue_pending_cmds_again (struct mfi_softc*) ;
 int mfi_kill_hba (struct mfi_softc*) ;
 int mfi_release_command (TYPE_1__*) ;
 int mfi_remove_busy (TYPE_1__*) ;
 int mfi_tbolt_init_MFI_queue (struct mfi_softc*) ;
 int mfi_tbolt_sync_map_info (struct mfi_softc*) ;
 scalar_t__ mfi_transition_firmware (struct mfi_softc*) ;
 int stub1 (struct mfi_softc*) ;
 int stub2 (struct mfi_softc*) ;
 int stub3 (struct mfi_softc*) ;
 int stub4 (struct mfi_softc*) ;

__attribute__((used)) static void
mfi_process_fw_state_chg_isr(void *arg)
{
 struct mfi_softc *sc= (struct mfi_softc *)arg;
 int error, status;

 if (sc->adpreset == 1) {
  device_printf(sc->mfi_dev, "First stage of FW reset "
       "initiated...\n");

  sc->mfi_adp_reset(sc);
  sc->mfi_enable_intr(sc);

  device_printf(sc->mfi_dev, "First stage of reset complete, "
      "second stage initiated...\n");

  sc->adpreset = 2;


  for (int wait = 0; wait < 20000; wait++)
   DELAY(1000);
  device_printf(sc->mfi_dev, "Second stage of FW reset "
       "initiated...\n");
  while ((status = MFI_READ4(sc, MFI_RSR)) & 0x04);

  sc->mfi_disable_intr(sc);


  if (mfi_transition_firmware(sc)) {
   device_printf(sc->mfi_dev, "controller is not in "
       "ready state\n");
   mfi_kill_hba(sc);
   sc->hw_crit_error = 1;
   return;
  }
  if ((error = mfi_tbolt_init_MFI_queue(sc)) != 0) {
   device_printf(sc->mfi_dev, "Failed to initialise MFI "
       "queue\n");
   mfi_kill_hba(sc);
   sc->hw_crit_error = 1;
   return;
  }


  MFI_WRITE4(sc, MFI_RFPI, sc->mfi_max_fw_cmds - 1);
  MFI_WRITE4(sc, MFI_RPI, sc->last_reply_idx);

  sc->mfi_enable_intr(sc);
  sc->adpreset = 0;
  if (sc->mfi_aen_cm != ((void*)0)) {
   free(sc->mfi_aen_cm->cm_data, M_MFIBUF);
   mfi_remove_busy(sc->mfi_aen_cm);
   mfi_release_command(sc->mfi_aen_cm);
   sc->mfi_aen_cm = ((void*)0);
  }

  if (sc->mfi_map_sync_cm != ((void*)0)) {
   mfi_remove_busy(sc->mfi_map_sync_cm);
   mfi_release_command(sc->mfi_map_sync_cm);
   sc->mfi_map_sync_cm = ((void*)0);
  }
  mfi_issue_pending_cmds_again(sc);






  if (!sc->hw_crit_error) {




   mfi_aen_setup(sc, sc->last_seq_num);
   mfi_tbolt_sync_map_info(sc);

   sc->issuepend_done = 1;
   device_printf(sc->mfi_dev, "second stage of reset "
       "complete, FW is ready now.\n");
  } else {
   device_printf(sc->mfi_dev, "second stage of reset "
        "never completed, hba was marked offline.\n");
  }
 } else {
  device_printf(sc->mfi_dev, "mfi_process_fw_state_chg_isr "
      "called with unhandled value:%d\n", sc->adpreset);
 }
}
