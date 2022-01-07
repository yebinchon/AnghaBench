
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_L3_CTABLE_MASK0 ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_l3ctable_mask(uint64_t nae_base, int hwport, uint32_t ptmask,
    uint32_t l3portmask)
{
 uint32_t val;

 val = ((ptmask & 0x1) << 6) |
     ((l3portmask & 0x1) << 5) |
     (hwport & 0x1f);
 nlm_write_nae_reg(nae_base, NAE_L3_CTABLE_MASK0, val);
}
