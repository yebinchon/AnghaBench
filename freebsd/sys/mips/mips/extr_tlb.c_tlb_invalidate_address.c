
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pmap {int dummy; } ;
typedef int register_t ;


 int PAGE_MASK ;
 int TLBHI_ASID_MASK ;
 int TLBHI_ENTRY (int ,int ) ;
 int intr_disable () ;
 int intr_restore (int) ;
 int mips_rd_entryhi () ;
 int mips_rd_index () ;
 int mips_wr_entryhi (int) ;
 int mips_wr_pagemask (int ) ;
 int pmap_asid (struct pmap*) ;
 int tlb_invalidate_one (int) ;
 int tlb_probe () ;

void
tlb_invalidate_address(struct pmap *pmap, vm_offset_t va)
{
 register_t asid;
 register_t s;
 int i;

 va &= ~PAGE_MASK;

 s = intr_disable();
 asid = mips_rd_entryhi() & TLBHI_ASID_MASK;

 mips_wr_pagemask(0);
 mips_wr_entryhi(TLBHI_ENTRY(va, pmap_asid(pmap)));
 tlb_probe();
 i = mips_rd_index();
 if (i >= 0)
  tlb_invalidate_one(i);

 mips_wr_entryhi(asid);
 intr_restore(s);
}
