
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_LOOPBACK ;
 int MII_BMCR ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int mv88e1xxx_set_loopback(struct cphy *cphy, int mmd, int dir, int on)
{
 return t3_mdio_change_bits(cphy, 0, MII_BMCR, BMCR_LOOPBACK,
        on ? BMCR_LOOPBACK : 0);
}
