
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ NAE_L3CTABLE0 ;
 int nlm_write_nae_reg (int ,scalar_t__,int) ;

void
nlm_setup_l3ctable_even(uint64_t nae_base, int entry, uint32_t l3hdroff,
    uint32_t ipcsum_en, uint32_t l4protooff,
    uint32_t l2proto, uint32_t eth_type)
{
 uint32_t val;

 val = ((l3hdroff & 0x3f) << 26) |
     ((l4protooff & 0x3f) << 20) |
     ((ipcsum_en & 0x1) << 18) |
     ((l2proto & 0x3) << 16) |
     (eth_type & 0xffff);
 nlm_write_nae_reg(nae_base, (NAE_L3CTABLE0 + (entry * 2)), val);
}
