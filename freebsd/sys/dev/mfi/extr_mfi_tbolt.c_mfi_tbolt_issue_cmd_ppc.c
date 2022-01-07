
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct mfi_softc {int dummy; } ;
typedef int bus_addr_t ;


 int MFI_IQPH ;
 int MFI_IQPL ;
 int MFI_REQ_DESCRIPT_FLAGS_MFA ;
 int MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int ) ;

void
mfi_tbolt_issue_cmd_ppc(struct mfi_softc *sc, bus_addr_t bus_add,
   uint32_t frame_cnt)
{
 bus_add |= (MFI_REQ_DESCRIPT_FLAGS_MFA
     << MFI_REQ_DESCRIPT_FLAGS_TYPE_SHIFT);
 MFI_WRITE4(sc, MFI_IQPL, (uint32_t)bus_add);
 MFI_WRITE4(sc, MFI_IQPH, (uint32_t)((uint64_t)bus_add >> 32));
}
