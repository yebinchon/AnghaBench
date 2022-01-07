
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int mac_late ;
 int mac_policy_sx ;
 int sx_slock (int *) ;

void
mac_policy_slock_sleep(void)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
      "mac_policy_slock_sleep");


 if (!mac_late)
  return;

 sx_slock(&mac_policy_sx);

}
