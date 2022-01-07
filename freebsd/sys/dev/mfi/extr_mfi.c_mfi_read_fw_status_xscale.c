
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int dummy; } ;
typedef int int32_t ;


 int MFI_OMSG0 ;
 int MFI_READ4 (struct mfi_softc*,int ) ;

__attribute__((used)) static int32_t
mfi_read_fw_status_xscale(struct mfi_softc *sc)
{
 return MFI_READ4(sc, MFI_OMSG0);
}
