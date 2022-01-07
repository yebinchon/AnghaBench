
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {scalar_t__ s_lno; struct blame_entry* next; } ;



__attribute__((used)) static struct blame_entry *blame_merge(struct blame_entry *list1,
           struct blame_entry *list2)
{
 struct blame_entry *p1 = list1, *p2 = list2,
  **tail = &list1;

 if (!p1)
  return p2;
 if (!p2)
  return p1;

 if (p1->s_lno <= p2->s_lno) {
  do {
   tail = &p1->next;
   if ((p1 = *tail) == ((void*)0)) {
    *tail = p2;
    return list1;
   }
  } while (p1->s_lno <= p2->s_lno);
 }
 for (;;) {
  *tail = p2;
  do {
   tail = &p2->next;
   if ((p2 = *tail) == ((void*)0)) {
    *tail = p1;
    return list1;
   }
  } while (p1->s_lno > p2->s_lno);
  *tail = p1;
  do {
   tail = &p1->next;
   if ((p1 = *tail) == ((void*)0)) {
    *tail = p2;
    return list1;
   }
  } while (p1->s_lno <= p2->s_lno);
 }
}
