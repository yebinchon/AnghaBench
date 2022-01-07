
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cs_flags; struct cpuset* cs_parent; } ;


 int CPU_SET_ROOT ;

__attribute__((used)) static struct cpuset *
cpuset_getroot(struct cpuset *set)
{

 while ((set->cs_flags & CPU_SET_ROOT) == 0 && set->cs_parent != ((void*)0))
  set = set->cs_parent;
 return (set);
}
