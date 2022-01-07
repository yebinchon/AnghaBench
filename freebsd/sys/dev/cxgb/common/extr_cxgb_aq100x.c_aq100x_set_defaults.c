
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_THERMAL_THR ;
 int MDIO_DEV_VEND1 ;
 int mdio_write (struct cphy*,int ,int ,int) ;

__attribute__((used)) static int
aq100x_set_defaults(struct cphy *phy)
{
 return mdio_write(phy, MDIO_DEV_VEND1, AQ_THERMAL_THR, 0x6c00);
}
