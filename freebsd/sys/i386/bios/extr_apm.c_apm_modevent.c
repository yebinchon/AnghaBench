
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int EBUSY ;
 int EPERM ;


 int POWER_PM_TYPE_APM ;
 int cold ;
 int power_pm_get_type () ;

__attribute__((used)) static int
apm_modevent(struct module *mod, int event, void *junk)
{

 switch (event) {
 case 129:
  if (!cold)
   return (EPERM);
  break;
 case 128:
  if (!cold && power_pm_get_type() == POWER_PM_TYPE_APM)
   return (EBUSY);
  break;
 default:
  break;
 }

 return (0);
}
