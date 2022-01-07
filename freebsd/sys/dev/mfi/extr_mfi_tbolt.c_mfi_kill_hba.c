
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; } ;


 int MFI_FLAGS_TBOLT ;
 int MFI_IDB ;
 int MFI_STOP_ADP ;
 int MFI_WRITE4 (struct mfi_softc*,int,int ) ;

__attribute__((used)) static void
mfi_kill_hba(struct mfi_softc *sc)
{
 if (sc->mfi_flags & MFI_FLAGS_TBOLT)
  MFI_WRITE4(sc, 0x00, MFI_STOP_ADP);
 else
  MFI_WRITE4(sc, MFI_IDB, MFI_STOP_ADP);
}
