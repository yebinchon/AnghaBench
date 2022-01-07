
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int LASI_CTRL ;
 int MDIO_DEV_PMA_PMD ;
 int mdio_write (struct cphy*,int ,int ,int) ;

int t3_phy_lasi_intr_enable(struct cphy *phy)
{
 return mdio_write(phy, MDIO_DEV_PMA_PMD, LASI_CTRL, 1);
}
