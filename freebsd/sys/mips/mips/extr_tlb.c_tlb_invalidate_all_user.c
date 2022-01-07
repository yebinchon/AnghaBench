
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap {int dummy; } ;
typedef int register_t ;


 int TLBHI_ASID_MASK ;
 int intr_disable () ;
 int intr_restore (int) ;
 int mips_rd_entryhi () ;
 unsigned int mips_rd_wired () ;
 int mips_wr_entryhi (int) ;
 int mips_wr_index (unsigned int) ;
 unsigned int num_tlbentries ;
 int pmap_asid (struct pmap*) ;
 int tlb_invalidate_one (unsigned int) ;
 int tlb_read () ;

void
tlb_invalidate_all_user(struct pmap *pmap)
{
 register_t asid;
 register_t s;
 unsigned i;

 s = intr_disable();
 asid = mips_rd_entryhi() & TLBHI_ASID_MASK;

 for (i = mips_rd_wired(); i < num_tlbentries; i++) {
  register_t uasid;

  mips_wr_index(i);
  tlb_read();

  uasid = mips_rd_entryhi() & TLBHI_ASID_MASK;
  if (pmap == ((void*)0)) {



   if (uasid == 0)
    continue;
  } else {



   if (uasid != pmap_asid(pmap))
    continue;
  }
  tlb_invalidate_one(i);
 }

 mips_wr_entryhi(asid);
 intr_restore(s);
}
