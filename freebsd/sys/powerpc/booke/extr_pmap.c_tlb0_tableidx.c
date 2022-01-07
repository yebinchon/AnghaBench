
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vm_offset_t ;


 unsigned int MAS2_TLB0_ENTRY_IDX_MASK ;
 unsigned int MAS2_TLB0_ENTRY_IDX_SHIFT ;
 unsigned int TLB0_ENTRIES_PER_WAY ;

__attribute__((used)) static inline unsigned int
tlb0_tableidx(vm_offset_t va, unsigned int way)
{
 unsigned int idx;

 idx = (way * TLB0_ENTRIES_PER_WAY);
 idx += (va & MAS2_TLB0_ENTRY_IDX_MASK) >> MAS2_TLB0_ENTRY_IDX_SHIFT;
 return (idx);
}
