
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int ;


 int ASI_DTLB_DATA_ACCESS_REG ;
 int ASI_DTLB_TAG_READ_REG ;
 int ASI_ITLB_DATA_ACCESS_REG ;
 int ASI_ITLB_TAG_READ_REG ;
 int TD_L ;
 int TD_V ;
 scalar_t__ TLB_CTX_KERNEL ;
 int TLB_DAR_FTLB ;
 scalar_t__ TLB_DAR_SLOT (int ,scalar_t__) ;
 int TLB_DAR_STLB ;
 scalar_t__ TLB_TAR_CTX (int) ;
 scalar_t__ ZEUS_FTLB_ENTRIES ;
 scalar_t__ ZEUS_STLB_ENTRIES ;
 int ldxa (scalar_t__,int ) ;
 int stxa_sync (scalar_t__,int ,int ) ;

void
zeus_tlb_flush_user(void)
{
 u_long data, tag;
 u_int i, slot;

 for (i = 0; i < ZEUS_FTLB_ENTRIES; i++) {
  slot = TLB_DAR_SLOT(TLB_DAR_FTLB, i);
  data = ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
  tag = ldxa(slot, ASI_DTLB_TAG_READ_REG);
  if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
      TLB_TAR_CTX(tag) != TLB_CTX_KERNEL)
   stxa_sync(slot, ASI_DTLB_DATA_ACCESS_REG, 0);
  data = ldxa(slot, ASI_ITLB_DATA_ACCESS_REG);
  tag = ldxa(slot, ASI_ITLB_TAG_READ_REG);
  if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
      TLB_TAR_CTX(tag) != TLB_CTX_KERNEL)
   stxa_sync(slot, ASI_ITLB_DATA_ACCESS_REG, 0);
 }
 for (i = 0; i < ZEUS_STLB_ENTRIES; i++) {
  slot = TLB_DAR_SLOT(TLB_DAR_STLB, i);
  data = ldxa(slot, ASI_DTLB_DATA_ACCESS_REG);
  tag = ldxa(slot, ASI_DTLB_TAG_READ_REG);
  if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
      TLB_TAR_CTX(tag) != TLB_CTX_KERNEL)
   stxa_sync(slot, ASI_DTLB_DATA_ACCESS_REG, 0);
  data = ldxa(slot, ASI_ITLB_DATA_ACCESS_REG);
  tag = ldxa(slot, ASI_ITLB_TAG_READ_REG);
  if ((data & TD_V) != 0 && (data & TD_L) == 0 &&
      TLB_TAR_CTX(tag) != TLB_CTX_KERNEL)
   stxa_sync(slot, ASI_ITLB_DATA_ACCESS_REG, 0);
 }
}
