
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_DEV_PMA_PMD ;
 int msleep (int) ;
 int t3_phy_reset (struct cphy*,int ,int) ;

__attribute__((used)) static int tn1010_reset(struct cphy *phy, int wait)
{
 int err = t3_phy_reset(phy, MDIO_DEV_PMA_PMD, wait);
 msleep(500);
 return err;
}
