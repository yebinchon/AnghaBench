
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int mv88e1xxx_reset (struct cphy*,int ) ;
 int t3_set_phy_speed_duplex (struct cphy*,int,int) ;

__attribute__((used)) static int mv88e1xxx_set_speed_duplex(struct cphy *phy, int speed, int duplex)
{
 int err = t3_set_phy_speed_duplex(phy, speed, duplex);


 if (!err)
  err = mv88e1xxx_reset(phy, 0);
 return err;
}
