
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int dummy; } ;
typedef int int32_t ;


 int MFI_FIRMWARE_STATE_CHANGE ;
 int MFI_FUSION_ENABLE_INTERRUPT_MASK ;
 int MFI_OSTS ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_STATE_CHANGE_INTERRUPT ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

int32_t
mfi_tbolt_check_clear_intr_ppc(struct mfi_softc *sc)
{
 int32_t status, mfi_status = 0;

 status = MFI_READ4(sc, MFI_OSTS);

 if (status & 1) {
  MFI_WRITE4(sc, MFI_OSTS, status);
  MFI_READ4(sc, MFI_OSTS);
  if (status & MFI_STATE_CHANGE_INTERRUPT) {
   mfi_status |= MFI_FIRMWARE_STATE_CHANGE;
  }

  return mfi_status;
 }
 if (!(status & MFI_FUSION_ENABLE_INTERRUPT_MASK))
  return 1;

 MFI_READ4(sc, MFI_OSTS);
 return 0;
}
