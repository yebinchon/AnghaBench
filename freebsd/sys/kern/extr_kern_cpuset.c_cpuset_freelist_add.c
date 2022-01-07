
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;
struct cpuset {int dummy; } ;


 int LIST_INSERT_HEAD (struct setlist*,struct cpuset*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int cpuset_zone ;
 int cs_link ;
 struct cpuset* uma_zalloc (int ,int) ;

__attribute__((used)) static void
cpuset_freelist_add(struct setlist *list, int count)
{
 struct cpuset *set;
 int i;

 for (i = 0; i < count; i++) {
  set = uma_zalloc(cpuset_zone, M_ZERO | M_WAITOK);
  LIST_INSERT_HEAD(list, set, cs_link);
 }
}
