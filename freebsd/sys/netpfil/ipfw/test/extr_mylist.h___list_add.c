
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;



__attribute__((used)) static inline void
__list_add(struct list_head *o, struct list_head *prev,
        struct list_head *next)
{
        next->prev = o;
        o->next = next;
        o->prev = prev;
        prev->next = o;
}
