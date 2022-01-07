
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int aq100x_autoneg_enable (struct cphy*) ;

__attribute__((used)) static int
aq100x_autoneg_restart(struct cphy *phy)
{
 return aq100x_autoneg_enable(phy);
}
