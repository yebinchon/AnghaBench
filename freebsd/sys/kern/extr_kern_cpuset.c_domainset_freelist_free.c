
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;


 struct domainset* LIST_FIRST (struct domainlist*) ;
 int LIST_REMOVE (struct domainset*,int ) ;
 int domainset_zone ;
 int ds_link ;
 int uma_zfree (int ,struct domainset*) ;

__attribute__((used)) static void
domainset_freelist_free(struct domainlist *list)
{
 struct domainset *set;

 while ((set = LIST_FIRST(list)) != ((void*)0)) {
  LIST_REMOVE(set, ds_link);
  uma_zfree(domainset_zone, set);
 }
}
