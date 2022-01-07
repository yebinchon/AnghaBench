
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int INJ_VECTOR_MASK ;
 int INJ_WORD_MASK ;
 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int QUADRANT_MASK ;
 int SBT_1MS ;
 int VM_MEMATTR_UNCACHEABLE ;
 int bit_mask ;
 int delay_ms ;
 int ecc_ei_inject_one (void*,int ) ;
 scalar_t__ kmem_alloc_attr (int ,int ,int ,int ,int ) ;
 int kmem_free (scalar_t__,int ) ;
 int pause_sbt (char*,int,int ,int ) ;
 int quadrant ;
 int word_mask ;

__attribute__((used)) static void
ecc_ei_inject(int count)
{
 vm_offset_t memory;
 int injected;

 KASSERT((quadrant & ~QUADRANT_MASK) == 0,
     ("quadrant value is outside of range: %u", quadrant));
 KASSERT(word_mask != 0 && (word_mask & ~INJ_WORD_MASK) == 0,
     ("word mask value is outside of range: 0x%x", word_mask));
 KASSERT(bit_mask != 0 && (bit_mask & ~INJ_VECTOR_MASK) == 0,
     ("bit mask value is outside of range: 0x%x", bit_mask));

 memory = kmem_alloc_attr(PAGE_SIZE, M_WAITOK, 0, ~0,
     VM_MEMATTR_UNCACHEABLE);

 for (injected = 0; injected < count; injected++) {
  ecc_ei_inject_one((void*)memory, PAGE_SIZE);
  if (delay_ms != 0 && injected != count - 1)
   pause_sbt("ecc_ei_inject", delay_ms * SBT_1MS, 0, 0);
 }

 kmem_free(memory, PAGE_SIZE);
}
