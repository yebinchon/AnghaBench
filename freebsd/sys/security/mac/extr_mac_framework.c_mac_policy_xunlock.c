
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mac_late ;
 int mac_policy_rm ;
 int mac_policy_sx ;
 int rm_wunlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
mac_policy_xunlock(void)
{


 if (!mac_late)
  return;

 rm_wunlock(&mac_policy_rm);
 sx_xunlock(&mac_policy_sx);

}
