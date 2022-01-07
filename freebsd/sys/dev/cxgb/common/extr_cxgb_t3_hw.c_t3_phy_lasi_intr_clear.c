
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int dummy; } ;


 int LASI_STAT ;
 int MDIO_DEV_PMA_PMD ;
 int mdio_read (struct cphy*,int ,int ,int *) ;

int t3_phy_lasi_intr_clear(struct cphy *phy)
{
 u32 val;

 return mdio_read(phy, MDIO_DEV_PMA_PMD, LASI_STAT, &val);
}
