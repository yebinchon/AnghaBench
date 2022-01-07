
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int tlb_static_entries ;
 int tlb_write (int ,int ,int ,int ,int ,int ,int ) ;

void tlb_map(uint32_t epn, uint32_t rpn, uint32_t erpn, uint32_t flags,
    uint32_t perms)
{

 tlb_write(++tlb_static_entries, epn, rpn, erpn, 0, flags, perms);
}
