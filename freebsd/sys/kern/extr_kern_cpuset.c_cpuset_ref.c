
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cs_ref; } ;


 int refcount_acquire (int *) ;

struct cpuset *
cpuset_ref(struct cpuset *set)
{

 refcount_acquire(&set->cs_ref);
 return (set);
}
