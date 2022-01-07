
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_FLOW_CRC16_POLY_CFG ;
 int nlm_write_nae_reg (int ,int ,int ) ;

void
nlm_setup_flow_crc_poly(uint64_t nae_base, uint32_t poly)
{
 nlm_write_nae_reg(nae_base, NAE_FLOW_CRC16_POLY_CFG, poly);
}
