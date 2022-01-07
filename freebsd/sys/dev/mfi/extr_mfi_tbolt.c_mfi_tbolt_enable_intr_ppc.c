
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int dummy; } ;


 int MFI_FUSION_ENABLE_INTERRUPT_MASK ;
 int MFI_OMSK ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int ) ;

void
mfi_tbolt_enable_intr_ppc(struct mfi_softc *sc)
{
 MFI_WRITE4(sc, MFI_OMSK, ~MFI_FUSION_ENABLE_INTERRUPT_MASK);
 MFI_READ4(sc, MFI_OMSK);
}
