
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int register_t ;
typedef int pmap_t ;


 int KASSERT (int,char*) ;
 int TLBHI_ASID_MASK ;
 int TLBHI_ENTRY (scalar_t__,int) ;
 int TLBMASK_SHIFT ;
 int intr_disable () ;
 int intr_restore (int) ;
 int mips_rd_entryhi () ;
 int mips_rd_index () ;
 int mips_rd_pagemask () ;
 int mips_rd_wired () ;
 int mips_wr_entryhi (int) ;
 int mips_wr_index (int) ;
 int mips_wr_pagemask (int ) ;
 scalar_t__ num_tlbentries ;
 int pmap_asid (int ) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int tlb_invalidate_one (int) ;
 int tlb_probe () ;
 int tlb_read () ;

void
tlb_invalidate_range(pmap_t pmap, vm_offset_t start, vm_offset_t end)
{
 register_t asid, end_hi, hi, hi_pagemask, s, save_asid, start_hi;
 int i;

 KASSERT(start < end || (end == 0 && start > 0),
     ("tlb_invalidate_range: invalid range"));





 start &= ~((1 << TLBMASK_SHIFT) - 1);
 end = roundup2(end, 1 << TLBMASK_SHIFT);

 s = intr_disable();
 save_asid = mips_rd_entryhi() & TLBHI_ASID_MASK;

 asid = pmap_asid(pmap);
 start_hi = TLBHI_ENTRY(start, asid);
 end_hi = TLBHI_ENTRY(end, asid);




 if (end - start < num_tlbentries << TLBMASK_SHIFT || (end == 0 &&
     start >= -(num_tlbentries << TLBMASK_SHIFT))) {





  for (hi = start_hi; hi != end_hi; hi += 1 << TLBMASK_SHIFT) {
   mips_wr_pagemask(0);
   mips_wr_entryhi(hi);
   tlb_probe();
   i = mips_rd_index();
   if (i >= 0)
    tlb_invalidate_one(i);
  }
 } else {




  for (i = mips_rd_wired(); i < num_tlbentries; i++) {
   mips_wr_index(i);
   tlb_read();
   hi = mips_rd_entryhi();
   if ((hi & TLBHI_ASID_MASK) == asid && (hi < end_hi ||
       end == 0)) {




    hi_pagemask = mips_rd_pagemask();
    if (hi >= (start_hi & ~(hi_pagemask <<
        TLBMASK_SHIFT)))
     tlb_invalidate_one(i);
   }
  }
 }

 mips_wr_entryhi(save_asid);
 intr_restore(s);
}
