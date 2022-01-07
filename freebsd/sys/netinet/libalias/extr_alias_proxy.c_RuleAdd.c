
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_entry {int rule_index; struct proxy_entry* next; struct proxy_entry* last; struct libalias* la; } ;
struct libalias {struct proxy_entry* proxyList; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;

void
RuleAdd(struct libalias *la, struct proxy_entry *entry)
{
 int rule_index;
 struct proxy_entry *ptr;
 struct proxy_entry *ptr_last;

 LIBALIAS_LOCK_ASSERT(la);

 entry->la = la;
 if (la->proxyList == ((void*)0)) {
  la->proxyList = entry;
  entry->last = ((void*)0);
  entry->next = ((void*)0);
  return;
 }

 rule_index = entry->rule_index;
 ptr = la->proxyList;
 ptr_last = ((void*)0);
 while (ptr != ((void*)0)) {
  if (ptr->rule_index >= rule_index) {
   if (ptr_last == ((void*)0)) {
    entry->next = la->proxyList;
    entry->last = ((void*)0);
    la->proxyList->last = entry;
    la->proxyList = entry;
    return;
   }
   ptr_last->next = entry;
   ptr->last = entry;
   entry->last = ptr->last;
   entry->next = ptr;
   return;
  }
  ptr_last = ptr;
  ptr = ptr->next;
 }

 ptr_last->next = entry;
 entry->last = ptr_last;
 entry->next = ((void*)0);
}
