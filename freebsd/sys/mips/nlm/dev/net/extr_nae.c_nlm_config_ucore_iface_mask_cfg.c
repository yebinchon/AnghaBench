
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_UCORE_IFACEMASK_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_config_ucore_iface_mask_cfg(uint64_t nae_base, int port,
    int nblock_ucore_mask)
{
 uint32_t val;

 val = ( 0x1U << 31) | ((nblock_ucore_mask & 0xffff) << 8) |
     (port & 0x1f);
 nlm_write_nae_reg(nae_base, NAE_UCORE_IFACEMASK_CFG, val);
}
