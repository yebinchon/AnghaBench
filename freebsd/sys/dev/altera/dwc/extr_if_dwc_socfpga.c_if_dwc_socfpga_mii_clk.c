
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int GMAC_MII_CLK_25_35M_DIV16 ;
 int GMAC_MII_CLK_35_60M_DIV26 ;
 int OF_finddevice (char*) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static int
if_dwc_socfpga_mii_clk(device_t dev)
{
 phandle_t root;

 root = OF_finddevice("/");

 if (ofw_bus_node_is_compatible(root, "altr,socfpga-stratix10"))
  return (GMAC_MII_CLK_35_60M_DIV26);


 return (GMAC_MII_CLK_25_35M_DIV16);
}
