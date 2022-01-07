
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int * fw_image; scalar_t__ is_1078; } ;


 int DELAY (int) ;
 int MPI_DIAG_DISABLE_ARM ;
 int MPI_DIAG_RESET_ADAPTER ;
 int MPT_OFFSET_DIAGNOSTIC ;
 int MPT_OFFSET_RESET_1078 ;
 int MPT_PRT_DEBUG ;
 int mpt_disable_diag_mode (struct mpt_softc*) ;
 int mpt_download_fw (struct mpt_softc*) ;
 int mpt_enable_diag_mode (struct mpt_softc*) ;
 int mpt_lprt (struct mpt_softc*,int ,char*) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_read (struct mpt_softc*,int ) ;
 int mpt_write (struct mpt_softc*,int ,int) ;

__attribute__((used)) static void
mpt_hard_reset(struct mpt_softc *mpt)
{
 int error;
 int wait;
 uint32_t diagreg;

 mpt_lprt(mpt, MPT_PRT_DEBUG, "hard reset\n");

 if (mpt->is_1078) {
  mpt_write(mpt, MPT_OFFSET_RESET_1078, 0x07);
  DELAY(1000);
  return;
 }

 error = mpt_enable_diag_mode(mpt);
 if (error) {
  mpt_prt(mpt, "WARNING - Could not enter diagnostic mode !\n");
  mpt_prt(mpt, "Trying to reset anyway.\n");
 }

 diagreg = mpt_read(mpt, MPT_OFFSET_DIAGNOSTIC);





 mpt_write(mpt, MPT_OFFSET_DIAGNOSTIC, diagreg | MPI_DIAG_DISABLE_ARM);
 DELAY(1000);


 mpt_write(mpt, MPT_OFFSET_DIAGNOSTIC, diagreg | MPI_DIAG_RESET_ADAPTER);







 wait = 5000;
 do {
  DELAY(1000);
  diagreg = mpt_read(mpt, MPT_OFFSET_DIAGNOSTIC);
 } while (--wait && (diagreg & MPI_DIAG_RESET_ADAPTER) == 0);

 if (wait == 0) {
  mpt_prt(mpt, "WARNING - Failed hard reset! "
   "Trying to initialize anyway.\n");
 }





 if (mpt->fw_image != ((void*)0)) {

  error = mpt_download_fw(mpt);

  if (error) {
   mpt_prt(mpt, "WARNING - Firmware Download Failed!\n");
   mpt_prt(mpt, "Trying to initialize anyway.\n");
  }
 }






 mpt_disable_diag_mode(mpt);
}
