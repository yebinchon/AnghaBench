
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {scalar_t__ modtype; int priv; } ;


 int LASI_CTRL ;

 int ael2005_get_module_type (struct cphy*,int ) ;
 int ael2005_intr_enable (struct cphy*) ;
 int ael2005_setup_sr_edc (struct cphy*) ;
 int ael2005_setup_twinax_edc (struct cphy*,int) ;
 int edc_none ;
 int mdio_read (struct cphy*,int const,int ,unsigned int*) ;
 int msleep (int) ;
 int phy_modtype_none ;
 int phy_modtype_twinax ;
 int phy_modtype_twinax_long ;
 int set_phy_regs (struct cphy*,struct reg_val*) ;
 int t3_phy_reset (struct cphy*,int const,int ) ;

__attribute__((used)) static int ael2005_reset(struct cphy *phy, int wait)
{
 static struct reg_val regs0[] = {
  { 128, 0xc001, 0, 1 << 5 },
  { 128, 0xc017, 0, 1 << 5 },
  { 128, 0xc013, 0xffff, 0xf341 },
  { 128, 0xc210, 0xffff, 0x8000 },
  { 128, 0xc210, 0xffff, 0x8100 },
  { 128, 0xc210, 0xffff, 0x8000 },
  { 128, 0xc210, 0xffff, 0 },
  { 0, 0, 0, 0 }
 };
 static struct reg_val regs1[] = {
  { 128, 0xca00, 0xffff, 0x0080 },
  { 128, 0xca12, 0xffff, 0 },
  { 0, 0, 0, 0 }
 };

 int err;
 unsigned int lasi_ctrl;

 err = mdio_read(phy, 128, LASI_CTRL, &lasi_ctrl);
 if (err)
  return err;

 err = t3_phy_reset(phy, 128, 0);
 if (err)
  return err;

 msleep(125);
 phy->priv = edc_none;
 err = set_phy_regs(phy, regs0);
 if (err)
  return err;

 msleep(50);

 err = ael2005_get_module_type(phy, 0);
 if (err < 0)
  return err;
 phy->modtype = (u8)err;

 if (err == phy_modtype_none)
  err = 0;
 else if (err == phy_modtype_twinax || err == phy_modtype_twinax_long)
  err = ael2005_setup_twinax_edc(phy, err);
 else
  err = ael2005_setup_sr_edc(phy);
 if (err)
  return err;

 err = set_phy_regs(phy, regs1);
 if (err)
  return err;


 if (lasi_ctrl & 1)
  err = ael2005_intr_enable(phy);
 return err;
}
