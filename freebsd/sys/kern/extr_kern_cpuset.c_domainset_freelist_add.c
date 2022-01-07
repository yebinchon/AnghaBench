
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;


 int LIST_INSERT_HEAD (struct domainlist*,struct domainset*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int domainset_zone ;
 int ds_link ;
 struct domainset* uma_zalloc (int ,int) ;

__attribute__((used)) static void
domainset_freelist_add(struct domainlist *list, int count)
{
 struct domainset *set;
 int i;

 for (i = 0; i < count; i++) {
  set = uma_zalloc(domainset_zone, M_ZERO | M_WAITOK);
  LIST_INSERT_HEAD(list, set, ds_link);
 }
}
