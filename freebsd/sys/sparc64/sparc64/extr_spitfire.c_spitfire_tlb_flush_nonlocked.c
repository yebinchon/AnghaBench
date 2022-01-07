
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int ASI_DTLB_DATA_ACCESS_REG ;
 int ASI_ITLB_DATA_ACCESS_REG ;
 scalar_t__ SPITFIRE_TLB_ENTRIES ;
 int TD_L ;
 scalar_t__ TLB_DAR_SLOT (int ,scalar_t__) ;
 int TLB_DAR_T32 ;
 int ldxa (scalar_t__,int ) ;
 int stxa_sync (scalar_t__,int ,int ) ;

void
spitfire_tlb_flush_nonlocked(void)
{
 u_int i;
 u_int slot;

 for (i = 0; i < SPITFIRE_TLB_ENTRIES; i++) {
  slot = TLB_DAR_SLOT(TLB_DAR_T32, i);
  if ((ldxa(slot, ASI_DTLB_DATA_ACCESS_REG) & TD_L) == 0)
   stxa_sync(slot, ASI_DTLB_DATA_ACCESS_REG, 0);
  if ((ldxa(slot, ASI_ITLB_DATA_ACCESS_REG) & TD_L) == 0)
   stxa_sync(slot, ASI_ITLB_DATA_ACCESS_REG, 0);
 }
}
