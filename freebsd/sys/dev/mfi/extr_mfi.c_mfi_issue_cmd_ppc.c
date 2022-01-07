
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int mfi_flags; } ;
typedef int bus_addr_t ;


 int MFI_FLAGS_SKINNY ;
 int MFI_IQP ;
 int MFI_IQPH ;
 int MFI_IQPL ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

__attribute__((used)) static void
mfi_issue_cmd_ppc(struct mfi_softc *sc, bus_addr_t bus_add, uint32_t frame_cnt)
{
 if (sc->mfi_flags & MFI_FLAGS_SKINNY) {
     MFI_WRITE4(sc, MFI_IQPL, (bus_add | frame_cnt <<1)|1 );
     MFI_WRITE4(sc, MFI_IQPH, 0x00000000);
 } else {
     MFI_WRITE4(sc, MFI_IQP, (bus_add | frame_cnt <<1)|1 );
 }
}
