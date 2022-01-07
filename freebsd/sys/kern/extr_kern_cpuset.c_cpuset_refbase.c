
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;


 int cpuset_getbase (struct cpuset*) ;
 struct cpuset* cpuset_ref (int ) ;

__attribute__((used)) static struct cpuset *
cpuset_refbase(struct cpuset *set)
{

 return (cpuset_ref(cpuset_getbase(set)));
}
