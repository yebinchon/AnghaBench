
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; } ;
typedef int int32_t ;


 int MFI_1078_RM ;
 int MFI_FLAGS_1078 ;
 int MFI_FLAGS_GEN2 ;
 int MFI_FLAGS_SKINNY ;
 int MFI_GEN2_RM ;
 int MFI_ODCR0 ;
 int MFI_OSTS ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_SKINNY_RM ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

__attribute__((used)) static int
mfi_check_clear_intr_ppc(struct mfi_softc *sc)
{
 int32_t status;

 status = MFI_READ4(sc, MFI_OSTS);
 if (sc->mfi_flags & MFI_FLAGS_1078) {
  if (!(status & MFI_1078_RM)) {
   return 1;
  }
 }
 else if (sc->mfi_flags & MFI_FLAGS_GEN2) {
  if (!(status & MFI_GEN2_RM)) {
   return 1;
  }
 }
 else if (sc->mfi_flags & MFI_FLAGS_SKINNY) {
  if (!(status & MFI_SKINNY_RM)) {
   return 1;
  }
 }
 if (sc->mfi_flags & MFI_FLAGS_SKINNY)
  MFI_WRITE4(sc, MFI_OSTS, status);
 else
  MFI_WRITE4(sc, MFI_ODCR0, status);
 return 0;
}
