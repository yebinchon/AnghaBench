
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MODULE_DEV_ADDR ;
 int ael_i2c_rd (struct cphy*,int ,int) ;
 int get_phytrans_type (struct cphy*) ;
 int msleep (int) ;
 int phy_modtype_lr ;
 int phy_modtype_lrm ;
 int phy_modtype_sr ;
 int phy_modtype_twinax ;
 int phy_modtype_twinax_long ;
 int phy_modtype_unknown ;
 int phy_transtype_sfp ;
 int phy_transtype_xfp ;

__attribute__((used)) static int ael2xxx_get_module_type(struct cphy *phy, int delay_ms)
{
 int v;

 if (delay_ms)
  msleep(delay_ms);

 v = get_phytrans_type(phy);
 if (v == phy_transtype_sfp) {


  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 3);
  if (v < 0)
   return v;

  if (v == 0x1)
   goto twinax;
  if (v == 0x10)
   return phy_modtype_sr;
  if (v == 0x20)
   return phy_modtype_lr;
  if (v == 0x40)
   return phy_modtype_lrm;

  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 8);
  if (v < 0)
   return v;
  if (v == 4) {
   v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 60);
   if (v < 0)
    return v;
   if (v & 0x1)
    goto twinax;
  }

  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 6);
  if (v < 0)
   return v;
  if (v != 4)
   return phy_modtype_unknown;

  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 10);
  if (v < 0)
   return v;

  if (v & 0x80) {
twinax:
   v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 0x12);
   if (v < 0)
    return v;
   return v > 10 ? phy_modtype_twinax_long :
       phy_modtype_twinax;
  }
 } else if (v == phy_transtype_xfp) {


  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 127);
  if (v < 0)
   return v;

  if (v != 1) {

   return phy_modtype_unknown;
  }

  v = ael_i2c_rd(phy, MODULE_DEV_ADDR, 131);
  if (v < 0)
   return v;
  v &= 0xf0;
  if (v == 0x10)
   return phy_modtype_lrm;
  if (v == 0x40)
   return phy_modtype_lr;
  if (v == 0x80)
   return phy_modtype_sr;
 }

 return phy_modtype_unknown;
}
