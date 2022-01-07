
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_val {int clear_bits; int set_bits; int reg_addr; scalar_t__ mmd_addr; } ;
struct cphy {int dummy; } ;


 int mdio_write (struct cphy*,scalar_t__,int ,int ) ;
 int t3_mdio_change_bits (struct cphy*,scalar_t__,int ,int,int ) ;

__attribute__((used)) static int set_phy_regs(struct cphy *phy, const struct reg_val *rv)
{
 int err;

 for (err = 0; rv->mmd_addr && !err; rv++) {
  if (rv->clear_bits == 0xffff)
   err = mdio_write(phy, rv->mmd_addr, rv->reg_addr,
      rv->set_bits);
  else
   err = t3_mdio_change_bits(phy, rv->mmd_addr,
        rv->reg_addr, rv->clear_bits,
        rv->set_bits);
 }
 return err;
}
