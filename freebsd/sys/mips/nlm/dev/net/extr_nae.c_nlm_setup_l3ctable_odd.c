
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ NAE_L3CTABLE0 ;
 int nlm_write_nae_reg (int ,scalar_t__,int) ;

void
nlm_setup_l3ctable_odd(uint64_t nae_base, int entry, uint32_t l3off0,
    uint32_t l3len0, uint32_t l3off1, uint32_t l3len1,
    uint32_t l3off2, uint32_t l3len2)
{
 uint32_t val;

 val = ((l3off0 & 0x3f) << 26) |
     ((l3len0 & 0x1f) << 21) |
     ((l3off1 & 0x3f) << 15) |
     ((l3len1 & 0x1f) << 10) |
     ((l3off2 & 0x3f) << 4) |
     (l3len2 & 0xf);
 nlm_write_nae_reg(nae_base, (NAE_L3CTABLE0 + ((entry * 2) + 1)), val);
}
