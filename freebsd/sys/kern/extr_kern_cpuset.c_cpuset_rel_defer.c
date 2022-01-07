
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;
struct cpuset {scalar_t__ cs_id; int cs_ref; } ;


 scalar_t__ CPUSET_INVALID ;
 int LIST_INSERT_HEAD (struct setlist*,struct cpuset*,int ) ;
 int LIST_REMOVE (struct cpuset*,int ) ;
 int cpuset_lock ;
 int cs_link ;
 int cs_siblings ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ refcount_release (int *) ;

__attribute__((used)) static void
cpuset_rel_defer(struct setlist *head, struct cpuset *set)
{

 if (refcount_release(&set->cs_ref) == 0)
  return;
 mtx_lock_spin(&cpuset_lock);
 LIST_REMOVE(set, cs_siblings);
 if (set->cs_id != CPUSET_INVALID)
  LIST_REMOVE(set, cs_link);
 LIST_INSERT_HEAD(head, set, cs_link);
 mtx_unlock_spin(&cpuset_lock);
}
