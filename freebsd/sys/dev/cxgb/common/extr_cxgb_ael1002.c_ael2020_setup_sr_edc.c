
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int member_1; int member_2; int member_3; int const member_0; } ;
struct cphy {int priv; } ;



 int edc_sr ;
 int msleep (int) ;
 int set_phy_regs (struct cphy*,struct reg_val*) ;

__attribute__((used)) static int ael2020_setup_sr_edc(struct cphy *phy)
{
 static struct reg_val regs[] = {
  { 128, 0xcc01, 0xffff, 0x488a },

  { 128, 0xcb1b, 0xffff, 0x0200 },
  { 128, 0xcb1c, 0xffff, 0x00f0 },
  { 128, 0xcc06, 0xffff, 0x00e0 },


  { 0, 0, 0, 0 }
 };
 int err;

 err = set_phy_regs(phy, regs);
 msleep(50);
 if (err)
  return err;

 phy->priv = edc_sr;
 return 0;
}
