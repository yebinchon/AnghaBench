
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {scalar_t__ cs_id; struct cpuset* cs_parent; int cs_ref; } ;
typedef scalar_t__ cpusetid_t ;


 scalar_t__ CPUSET_INVALID ;
 int LIST_REMOVE (struct cpuset*,int ) ;
 int cpuset_lock ;
 int cpuset_unr ;
 int cpuset_zone ;
 int cs_link ;
 int cs_siblings ;
 int free_unr (int ,scalar_t__) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ refcount_release (int *) ;
 int uma_zfree (int ,struct cpuset*) ;

void
cpuset_rel(struct cpuset *set)
{
 cpusetid_t id;

 if (refcount_release(&set->cs_ref) == 0)
  return;
 mtx_lock_spin(&cpuset_lock);
 LIST_REMOVE(set, cs_siblings);
 id = set->cs_id;
 if (id != CPUSET_INVALID)
  LIST_REMOVE(set, cs_link);
 mtx_unlock_spin(&cpuset_lock);
 cpuset_rel(set->cs_parent);
 uma_zfree(cpuset_zone, set);
 if (id != CPUSET_INVALID)
  free_unr(cpuset_unr, id);
}
