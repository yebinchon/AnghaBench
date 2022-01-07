
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int LASI_STAT ;
 int MDIO_DEV_PMA_PMD ;
 int cphy_cause_link_change ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;

int t3_phy_lasi_intr_handler(struct cphy *phy)
{
 unsigned int status;
 int err = mdio_read(phy, MDIO_DEV_PMA_PMD, LASI_STAT, &status);

 if (err)
  return err;
 return (status & 1) ? cphy_cause_link_change : 0;
}
