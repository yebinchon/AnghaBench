
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR933X_ETH_CFG_SW_PHY_ADDR_SWAP ;
 int AR933X_ETH_CFG_SW_PHY_SWAP ;
 int ar933x_configure_gmac (int ) ;
 scalar_t__ resource_int_value (char*,int ,char*,int*) ;

__attribute__((used)) static void
ar933x_chip_init_gmac(void)
{
 int val;
 uint32_t gmac_cfg = 0;
 if ((resource_int_value("ar933x_gmac", 0, "override_phy", &val) == 0)
     && (val == 0))
  return;
 if ((resource_int_value("ar933x_gmac", 0, "swap_phy", &val) == 0)
     && (val == 1))
  gmac_cfg |= AR933X_ETH_CFG_SW_PHY_SWAP;
 if ((resource_int_value("ar933x_gmac", 0, "swap_phy_addr", &val) == 0)
     && (val == 1))
  gmac_cfg |= AR933X_ETH_CFG_SW_PHY_ADDR_SWAP;
 ar933x_configure_gmac(gmac_cfg);
}
