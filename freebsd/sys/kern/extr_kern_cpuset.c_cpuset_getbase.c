
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {scalar_t__ cs_id; struct cpuset* cs_parent; } ;


 scalar_t__ CPUSET_INVALID ;

__attribute__((used)) static struct cpuset *
cpuset_getbase(struct cpuset *set)
{

 if (set->cs_id == CPUSET_INVALID)
  set = set->cs_parent;
 return (set);
}
