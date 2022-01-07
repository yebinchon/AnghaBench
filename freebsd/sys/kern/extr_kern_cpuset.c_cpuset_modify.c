
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpuset {int cs_flags; int cs_mask; } ;
typedef int cpuset_t ;
struct TYPE_3__ {int td_ucred; } ;


 int CPU_COPY (int *,int *) ;
 int CPU_SET_ROOT ;
 int CPU_SUBSET (int *,int *) ;
 int EINVAL ;
 int EPERM ;
 int PRIV_SCHED_CPUSET ;
 struct cpuset* cpuset_getroot (struct cpuset*) ;
 int cpuset_lock ;
 int cpuset_testupdate (struct cpuset*,int *,int ) ;
 int cpuset_update (struct cpuset*,int *) ;
 TYPE_1__* curthread ;
 scalar_t__ jailed (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int priv_check (TYPE_1__*,int ) ;

__attribute__((used)) static int
cpuset_modify(struct cpuset *set, cpuset_t *mask)
{
 struct cpuset *root;
 int error;

 error = priv_check(curthread, PRIV_SCHED_CPUSET);
 if (error)
  return (error);






 if (jailed(curthread->td_ucred) &&
     set->cs_flags & CPU_SET_ROOT)
  return (EPERM);




 root = cpuset_getroot(set);
 mtx_lock_spin(&cpuset_lock);
 if (root && !CPU_SUBSET(&root->cs_mask, mask)) {
  error = EINVAL;
  goto out;
 }
 error = cpuset_testupdate(set, mask, 0);
 if (error)
  goto out;
 CPU_COPY(mask, &set->cs_mask);
 cpuset_update(set, mask);
out:
 mtx_unlock_spin(&cpuset_lock);

 return (error);
}
