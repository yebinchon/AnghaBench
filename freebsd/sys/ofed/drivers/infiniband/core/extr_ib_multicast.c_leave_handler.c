
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_group {scalar_t__ retries; int work; int leave_state; } ;
struct ib_sa_mcmember_rec {int dummy; } ;


 int mcast_work_handler (int *) ;
 int send_leave (struct mcast_group*,int ) ;

__attribute__((used)) static void leave_handler(int status, struct ib_sa_mcmember_rec *rec,
     void *context)
{
 struct mcast_group *group = context;

 if (status && group->retries > 0 &&
     !send_leave(group, group->leave_state))
  group->retries--;
 else
  mcast_work_handler(&group->work);
}
