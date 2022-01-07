
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_FLOW_BASEMASK_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_program_flow_cfg(uint64_t nae_base, int port,
    uint32_t cur_flow_base, uint32_t flow_mask)
{
 uint32_t val;

 val = (cur_flow_base << 16) | port;
 val |= ((flow_mask & 0x1f) << 8);
 nlm_write_nae_reg(nae_base, NAE_FLOW_BASEMASK_CFG, val);
}
