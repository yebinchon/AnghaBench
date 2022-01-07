
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apmhook {int dummy; } ;


 int NAPM_HOOK ;
 int apm_del_hook (int *,struct apmhook*) ;
 int * hook ;

void
apm_hook_disestablish(int apmh, struct apmhook *ah)
{
 if (apmh < 0 || apmh >= NAPM_HOOK)
  return;

 apm_del_hook(&hook[apmh], ah);
}
