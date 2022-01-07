
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_RX_CONFIG ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_prepad_enable(uint64_t nae_base, int size)
{
 uint32_t val;

 val = nlm_read_nae_reg(nae_base, NAE_RX_CONFIG);
 val |= (1 << 13);
 val |= ((size & 0x3) << 22);
 nlm_write_nae_reg(nae_base, NAE_RX_CONFIG, val);
}
