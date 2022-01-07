
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_priotracker {int dummy; } ;


 int mac_late ;
 int mac_policy_rm ;
 int rm_rlock (int *,struct rm_priotracker*) ;

void
mac_policy_slock_nosleep(struct rm_priotracker *tracker)
{


 if (!mac_late)
  return;

 rm_rlock(&mac_policy_rm, tracker);

}
