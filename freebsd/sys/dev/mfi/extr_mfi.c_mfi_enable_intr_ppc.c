
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; } ;


 int MFI_1078_EIM ;
 int MFI_FLAGS_1078 ;
 int MFI_FLAGS_GEN2 ;
 int MFI_FLAGS_SKINNY ;
 int MFI_GEN2_EIM ;
 int MFI_ODCR0 ;
 int MFI_OMSK ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

__attribute__((used)) static void
mfi_enable_intr_ppc(struct mfi_softc *sc)
{
 if (sc->mfi_flags & MFI_FLAGS_1078) {
  MFI_WRITE4(sc, MFI_ODCR0, 0xFFFFFFFF);
  MFI_WRITE4(sc, MFI_OMSK, ~MFI_1078_EIM);
 }
 else if (sc->mfi_flags & MFI_FLAGS_GEN2) {
  MFI_WRITE4(sc, MFI_ODCR0, 0xFFFFFFFF);
  MFI_WRITE4(sc, MFI_OMSK, ~MFI_GEN2_EIM);
 }
 else if (sc->mfi_flags & MFI_FLAGS_SKINNY) {
  MFI_WRITE4(sc, MFI_OMSK, ~0x00000001);
 }
}
