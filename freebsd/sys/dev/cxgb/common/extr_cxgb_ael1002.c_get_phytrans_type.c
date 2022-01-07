
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MODULE_DEV_ADDR ;
 int ael_i2c_rd (struct cphy*,int ,int ) ;
 int phy_transtype_unknown ;

__attribute__((used)) static int get_phytrans_type(struct cphy *phy)
{
 int v;

 v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 0);
 if (v < 0)
  return phy_transtype_unknown;

 return v;
}
