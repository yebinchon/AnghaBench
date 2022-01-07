
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;
struct cpuset {int dummy; } ;


 struct cpuset* LIST_FIRST (struct setlist*) ;
 int LIST_REMOVE (struct cpuset*,int ) ;
 int cpuset_zone ;
 int cs_link ;
 int uma_zfree (int ,struct cpuset*) ;

__attribute__((used)) static void
cpuset_freelist_free(struct setlist *list)
{
 struct cpuset *set;

 while ((set = LIST_FIRST(list)) != ((void*)0)) {
  LIST_REMOVE(set, cs_link);
  uma_zfree(cpuset_zone, set);
 }
}
