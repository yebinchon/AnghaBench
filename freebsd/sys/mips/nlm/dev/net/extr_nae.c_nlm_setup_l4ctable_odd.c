
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ NAE_L4CTABLE0 ;
 int nlm_write_nae_reg (int ,scalar_t__,int) ;

void
nlm_setup_l4ctable_odd(uint64_t nae_base, int entry, uint32_t l4off0,
    uint32_t l4len0, uint32_t l4off1, uint32_t l4len1)
{
 uint32_t val;

 val = ((l4off0 & 0x3f) << 21) |
     ((l4len0 & 0xf) << 17) |
     ((l4off1 & 0x3f) << 11) |
     (l4len1 & 0xf);
 nlm_write_nae_reg(nae_base, (NAE_L4CTABLE0 + ((entry * 2) + 1)), val);
}
