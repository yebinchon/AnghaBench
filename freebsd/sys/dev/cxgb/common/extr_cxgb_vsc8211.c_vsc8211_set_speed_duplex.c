
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int t3_set_phy_speed_duplex (struct cphy*,int,int) ;
 int vsc8211_set_automdi (struct cphy*,int) ;

__attribute__((used)) static int vsc8211_set_speed_duplex(struct cphy *phy, int speed, int duplex)
{
 int err;

 err = t3_set_phy_speed_duplex(phy, speed, duplex);
 if (!err)
  err = vsc8211_set_automdi(phy, 1);
 return err;
}
