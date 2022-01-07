
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int sp; } ;


 int warnx (char*) ;

__attribute__((used)) static __inline bool
stack_empty(const struct stack *stack)
{
 bool empty = stack->sp == -1;

 if (empty)
  warnx("stack empty");
 return empty;
}
