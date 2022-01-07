
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volatile_list_head {struct volatile_list_head volatile* next; struct volatile_list_head volatile* prev; } ;



__attribute__((used)) static inline void __volatile_list_del(volatile struct volatile_list_head *prev,
           volatile struct volatile_list_head *next)
{
 next->prev = prev;
 prev->next = next;
}
