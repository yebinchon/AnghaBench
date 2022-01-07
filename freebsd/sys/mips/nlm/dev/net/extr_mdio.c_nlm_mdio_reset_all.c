
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int BLOCK_7 ;
 int LANE_CFG ;
 int nlm_gmac_mdio_reset (int ,int,int ,int ) ;
 int nlm_int_gmac_mdio_reset (int ,int ,int ,int ) ;

void
nlm_mdio_reset_all(uint64_t nae_base)
{

 nlm_int_gmac_mdio_reset(nae_base, 0, BLOCK_7, LANE_CFG);

 nlm_gmac_mdio_reset(nae_base, 0, BLOCK_7, LANE_CFG);
 nlm_gmac_mdio_reset(nae_base, 1, BLOCK_7, LANE_CFG);
}
