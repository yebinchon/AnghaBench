
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domainlist {int dummy; } ;


 int LIST_INIT (struct domainlist*) ;
 int domainset_freelist_add (struct domainlist*,int) ;

__attribute__((used)) static void
domainset_freelist_init(struct domainlist *list, int count)
{

 LIST_INIT(list);
 domainset_freelist_add(list, count);
}
