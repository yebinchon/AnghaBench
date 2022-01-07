
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int dummy; } ;


 int MFI_OMSK ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

void
mfi_tbolt_disable_intr_ppc(struct mfi_softc *sc)
{
 MFI_WRITE4(sc, MFI_OMSK, 0xFFFFFFFF);
 MFI_READ4(sc, MFI_OMSK);
}
