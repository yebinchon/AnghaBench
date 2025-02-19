
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MODULE_DEV_ADDR ;
 int SFF_DEV_ADDR ;
 int ael_i2c_rd (struct cphy*,int,int) ;
 int ael_i2c_wr (struct cphy*,int,int,int) ;
 int get_phytrans_type (struct cphy*) ;
 int phy_transtype_sfp ;
 int phy_transtype_xfp ;

__attribute__((used)) static int ael_laser_down(struct cphy *phy, int enable)
{
 int v, dev_addr;

 v = get_phytrans_type(phy);
 if (v < 0)
  return v;

 if (v == phy_transtype_sfp) {

  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 93);
  if (v < 0)
   return v;

  v &= 0x40;
  if (!v)
   return v;

  dev_addr = SFF_DEV_ADDR;
 } else if (v == phy_transtype_xfp)
  dev_addr = MODULE_DEV_ADDR;
 else
  return v;

 v = ael_i2c_rd(phy, dev_addr, 110);
 if (v < 0)
  return v;

 if (enable)
  v |= 0x40;
 else
  v &= ~0x40;

 v = ael_i2c_wr(phy, dev_addr, 110, v);

 return v;
}
