
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_stack {char* origin; size_t originlen; struct attr_stack* prev; } ;



__attribute__((used)) static void push_stack(struct attr_stack **attr_stack_p,
         struct attr_stack *elem, char *origin, size_t originlen)
{
 if (elem) {
  elem->origin = origin;
  if (origin)
   elem->originlen = originlen;
  elem->prev = *attr_stack_p;
  *attr_stack_p = elem;
 }
}
