
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_stack {struct attr_stack* prev; } ;


 int attr_stack_free (struct attr_stack*) ;

__attribute__((used)) static void drop_attr_stack(struct attr_stack **stack)
{
 while (*stack) {
  struct attr_stack *elem = *stack;
  *stack = elem->prev;
  attr_stack_free(elem);
 }
}
