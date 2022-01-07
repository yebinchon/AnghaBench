
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_fdt_phy_config {int dummy; } ;


 int M_OFWPROP ;
 int free (struct mii_fdt_phy_config*,int ) ;

void
mii_fdt_free_config(struct mii_fdt_phy_config *cfg)
{

 free(cfg, M_OFWPROP);
}
