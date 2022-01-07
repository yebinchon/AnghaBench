
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cs_parent; } ;


 int LIST_REMOVE (struct cpuset*,int ) ;
 int cpuset_rel (int ) ;
 int cpuset_zone ;
 int cs_link ;
 int uma_zfree (int ,struct cpuset*) ;

__attribute__((used)) static void
cpuset_rel_complete(struct cpuset *set)
{
 LIST_REMOVE(set, cs_link);
 cpuset_rel(set->cs_parent);
 uma_zfree(cpuset_zone, set);
}
