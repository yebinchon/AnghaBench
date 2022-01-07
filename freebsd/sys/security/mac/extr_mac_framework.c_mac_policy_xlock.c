
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int mac_late ;
 int mac_policy_rm ;
 int mac_policy_sx ;
 int rm_wlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
mac_policy_xlock(void)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
      "mac_policy_xlock()");


 if (!mac_late)
  return;

 sx_xlock(&mac_policy_sx);
 rm_wlock(&mac_policy_rm);

}
