
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kaiocb* p_aio; } ;
struct knote {int kn_flags; TYPE_1__ kn_ptr; scalar_t__ kn_sdata; } ;
struct kaiocb {int klist; } ;


 int EPERM ;
 int EV_FLAG1 ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
filt_aioattach(struct knote *kn)
{
 struct kaiocb *job;

 job = (struct kaiocb *)(uintptr_t)kn->kn_sdata;






 if ((kn->kn_flags & EV_FLAG1) == 0)
  return (EPERM);
 kn->kn_ptr.p_aio = job;
 kn->kn_flags &= ~EV_FLAG1;

 knlist_add(&job->klist, kn, 0);

 return (0);
}
