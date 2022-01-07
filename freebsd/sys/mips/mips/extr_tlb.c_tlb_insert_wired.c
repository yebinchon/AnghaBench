
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int register_t ;
typedef int pt_entry_t ;


 int PAGE_MASK ;
 int TLBHI_ASID_MASK ;
 int TLBHI_ENTRY (int ,int ) ;
 int intr_disable () ;
 int intr_restore (int) ;
 int mips_rd_entryhi () ;
 int mips_wr_entryhi (int) ;
 int mips_wr_entrylo0 (int ) ;
 int mips_wr_entrylo1 (int ) ;
 int mips_wr_index (unsigned int) ;
 int mips_wr_pagemask (int ) ;
 int tlb_write_indexed () ;

void
tlb_insert_wired(unsigned i, vm_offset_t va, pt_entry_t pte0, pt_entry_t pte1)
{
 register_t asid;
 register_t s;

 va &= ~PAGE_MASK;

 s = intr_disable();
 asid = mips_rd_entryhi() & TLBHI_ASID_MASK;

 mips_wr_index(i);
 mips_wr_pagemask(0);
 mips_wr_entryhi(TLBHI_ENTRY(va, 0));
 mips_wr_entrylo0(pte0);
 mips_wr_entrylo1(pte1);
 tlb_write_indexed();

 mips_wr_entryhi(asid);
 intr_restore(s);
}
