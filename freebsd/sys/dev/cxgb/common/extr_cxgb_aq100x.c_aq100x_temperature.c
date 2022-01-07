
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_THERMAL1 ;
 int AQ_THERMAL2 ;
 int MDIO_DEV_VEND1 ;
 scalar_t__ mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int
aq100x_temperature(struct cphy *phy)
{
 unsigned int v;

 if (mdio_read(phy, MDIO_DEV_VEND1, AQ_THERMAL2, &v) ||
     v == 0xffff || (v & 1) != 1)
  return (0xffff);

 if (mdio_read(phy, MDIO_DEV_VEND1, AQ_THERMAL1, &v))
  return (0xffff);

 return ((int)((signed char)(v >> 8)));
}
