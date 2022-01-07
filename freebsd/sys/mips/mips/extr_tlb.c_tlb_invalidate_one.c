
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MIPS_KSEG0_START ;
 int PAGE_SIZE ;
 int TLBHI_ENTRY (scalar_t__,int ) ;
 int mips_wr_entryhi (int ) ;
 int mips_wr_entrylo0 (int ) ;
 int mips_wr_entrylo1 (int ) ;
 int mips_wr_index (unsigned int) ;
 int mips_wr_pagemask (int ) ;
 int tlb_write_indexed () ;

__attribute__((used)) static void
tlb_invalidate_one(unsigned i)
{

 mips_wr_entryhi(TLBHI_ENTRY(MIPS_KSEG0_START + (2 * i * PAGE_SIZE), 0));
 mips_wr_entrylo0(0);
 mips_wr_entrylo1(0);
 mips_wr_pagemask(0);
 mips_wr_index(i);
 tlb_write_indexed();
}
