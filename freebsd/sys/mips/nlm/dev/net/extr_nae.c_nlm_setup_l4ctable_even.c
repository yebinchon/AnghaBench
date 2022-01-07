
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ NAE_L4CTABLE0 ;
 int nlm_write_nae_reg (int ,scalar_t__,int) ;

void
nlm_setup_l4ctable_even(uint64_t nae_base, int entry, uint32_t im,
    uint32_t l3cm, uint32_t l4pm, uint32_t port,
    uint32_t l3camaddr, uint32_t l4proto)
{
 uint32_t val;

 val = ((im & 0x1) << 19) |
     ((l3cm & 0x1) << 18) |
     ((l4pm & 0x1) << 17) |
     ((port & 0x1f) << 12) |
     ((l3camaddr & 0xf) << 8) |
     (l4proto & 0xff);
 nlm_write_nae_reg(nae_base, (NAE_L4CTABLE0 + (entry * 2)), val);
}
