
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proxy_entry {TYPE_1__* last; TYPE_2__* next; struct libalias* la; } ;
struct libalias {TYPE_2__* proxyList; } ;
struct TYPE_4__ {TYPE_1__* last; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 int LIBALIAS_LOCK_ASSERT (struct libalias*) ;
 int free (struct proxy_entry*) ;

__attribute__((used)) static void
RuleDelete(struct proxy_entry *entry)
{
 struct libalias *la;

 la = entry->la;
 LIBALIAS_LOCK_ASSERT(la);
 if (entry->last != ((void*)0))
  entry->last->next = entry->next;
 else
  la->proxyList = entry->next;

 if (entry->next != ((void*)0))
  entry->next->last = entry->last;

 free(entry);
}
