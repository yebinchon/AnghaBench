
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apmhook {int dummy; } ;


 int NAPM_HOOK ;
 struct apmhook* apm_add_hook (int *,struct apmhook*) ;
 int * hook ;

struct apmhook *
apm_hook_establish(int apmh, struct apmhook *ah)
{
 if (apmh < 0 || apmh >= NAPM_HOOK)
  return ((void*)0);

 return apm_add_hook(&hook[apmh], ah);
}
