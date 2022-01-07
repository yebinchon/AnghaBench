
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;



__attribute__((used)) static inline void list_add_tail(struct list_head *newp, struct list_head *head)
{
 head->prev->next = newp;
 newp->next = head;
 newp->prev = head->prev;
 head->prev = newp;
}
