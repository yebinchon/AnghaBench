
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_phy_if {int phy_config_aneg; int phy_status; int phy_stop; int phy_start; int phy_reset; int phy_init; } ;


 int xgbe_phy_config_aneg ;
 int xgbe_phy_init ;
 int xgbe_phy_reset ;
 int xgbe_phy_start ;
 int xgbe_phy_status ;
 int xgbe_phy_stop ;

void xgbe_init_function_ptrs_phy(struct xgbe_phy_if *phy_if)
{
 phy_if->phy_init = xgbe_phy_init;

 phy_if->phy_reset = xgbe_phy_reset;
 phy_if->phy_start = xgbe_phy_start;
 phy_if->phy_stop = xgbe_phy_stop;

 phy_if->phy_status = xgbe_phy_status;
 phy_if->phy_config_aneg = xgbe_phy_config_aneg;
}
