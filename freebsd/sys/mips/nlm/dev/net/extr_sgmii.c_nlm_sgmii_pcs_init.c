
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int xlp_nae_config_lane_gmac (int ,int ) ;

void
nlm_sgmii_pcs_init(uint64_t nae_base, uint32_t cplx_mask)
{
 xlp_nae_config_lane_gmac(nae_base, cplx_mask);
}
