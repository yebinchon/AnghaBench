
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct stack {int sp; TYPE_1__* stack; } ;
struct array {int dummy; } ;
struct TYPE_2__ {struct array* array; } ;


 struct array* array_new () ;
 struct value* array_retrieve (struct array*,size_t) ;

struct value *
frame_retrieve(const struct stack *stack, size_t i)
{
 struct array *a;

 if (stack->sp == -1)
  return (((void*)0));
 a = stack->stack[stack->sp].array;
 if (a == ((void*)0))
  a = stack->stack[stack->sp].array = array_new();
 return array_retrieve(a, i);
}
