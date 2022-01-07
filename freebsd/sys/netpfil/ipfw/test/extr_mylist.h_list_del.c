
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int * prev; int next; } ;


 int ND (char*,struct list_head*) ;
 int __list_del (int *,int ) ;

__attribute__((used)) static inline void
list_del(struct list_head *entry)
{
 ND("called on %p", entry);
        __list_del(entry->prev, entry->next);
        entry->next = entry->prev = ((void*)0);
}
