
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int dummy; } ;
typedef int int32_t ;


 int MFI_OSTS ;
 int MFI_OSTS_INTR_VALID ;
 int MFI_READ4 (struct mfi_softc*,int ) ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

__attribute__((used)) static int
mfi_check_clear_intr_xscale(struct mfi_softc *sc)
{
 int32_t status;

 status = MFI_READ4(sc, MFI_OSTS);
 if ((status & MFI_OSTS_INTR_VALID) == 0)
  return 1;

 MFI_WRITE4(sc, MFI_OSTS, status);
 return 0;
}
