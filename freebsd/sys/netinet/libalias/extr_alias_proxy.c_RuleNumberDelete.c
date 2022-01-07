
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_entry {int rule_index; struct proxy_entry* next; } ;
struct libalias {struct proxy_entry* proxyList; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int RuleDelete (struct proxy_entry*) ;

__attribute__((used)) static int
RuleNumberDelete(struct libalias *la, int rule_index)
{
 int err;
 struct proxy_entry *ptr;

 LIBALIAS_LOCK_ASSERT(la);
 err = -1;
 ptr = la->proxyList;
 while (ptr != ((void*)0)) {
  struct proxy_entry *ptr_next;

  ptr_next = ptr->next;
  if (ptr->rule_index == rule_index) {
   err = 0;
   RuleDelete(ptr);
  }
  ptr = ptr_next;
 }

 return (err);
}
