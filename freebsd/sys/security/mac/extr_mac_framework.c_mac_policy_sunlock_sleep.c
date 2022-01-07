
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mac_late ;
 int mac_policy_sx ;
 int sx_sunlock (int *) ;

void
mac_policy_sunlock_sleep(void)
{


 if (!mac_late)
  return;

 sx_sunlock(&mac_policy_sx);

}
