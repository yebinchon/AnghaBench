
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int dummy; } ;
typedef int bus_addr_t ;


 int MFI_IQP ;
 int MFI_WRITE4 (struct mfi_softc*,int ,int) ;

__attribute__((used)) static void
mfi_issue_cmd_xscale(struct mfi_softc *sc, bus_addr_t bus_add, uint32_t frame_cnt)
{
 MFI_WRITE4(sc, MFI_IQP,(bus_add >>3)|frame_cnt);
}
