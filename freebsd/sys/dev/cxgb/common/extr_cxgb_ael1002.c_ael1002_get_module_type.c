
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int ETIMEDOUT ;
 int ael2xxx_get_module_type (struct cphy*,int) ;
 int msleep (int) ;
 int phy_modtype_none ;

__attribute__((used)) static int ael1002_get_module_type(struct cphy *phy, int delay_ms)
{
 int v;

 if (delay_ms)
  msleep(delay_ms);

 v = ael2xxx_get_module_type(phy, delay_ms);

 return (v == -ETIMEDOUT ? phy_modtype_none : v);
}
