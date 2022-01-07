
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int VSC8211_EXT_PAGE_AXS ;
 int mdio_write (struct cphy*,int ,int,int) ;

__attribute__((used)) static int vsc8211_set_automdi(struct cphy *phy, int enable)
{
 int err;

 if ((err = mdio_write(phy, 0, VSC8211_EXT_PAGE_AXS, 0x52b5)) != 0 ||
     (err = mdio_write(phy, 0, 18, 0x12)) != 0 ||
     (err = mdio_write(phy, 0, 17, enable ? 0x2803 : 0x3003)) != 0 ||
     (err = mdio_write(phy, 0, 16, 0x87fa)) != 0 ||
     (err = mdio_write(phy, 0, VSC8211_EXT_PAGE_AXS, 0)) != 0)
  return err;
 return 0;
}
