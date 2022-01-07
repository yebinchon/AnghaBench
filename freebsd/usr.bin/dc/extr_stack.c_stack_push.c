
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int string; int num; } ;
struct value {int type; int * array; TYPE_2__ u; } ;
struct stack {size_t sp; TYPE_1__* stack; } ;
struct TYPE_3__ {int type; int * array; } ;





 int * array_dup (int *) ;
 int stack_grow (struct stack*) ;
 int stack_pushnumber (struct stack*,int ) ;
 int stack_pushstring (struct stack*,int ) ;

void
stack_push(struct stack *stack, struct value *v)
{

 switch (v->type) {
 case 130:
  stack_grow(stack);
  stack->stack[stack->sp].type = 130;
  break;
 case 129:
  stack_pushnumber(stack, v->u.num);
  break;
 case 128:
  stack_pushstring(stack, v->u.string);
  break;
 }
 stack->stack[stack->sp].array = v->array == ((void*)0) ?
     ((void*)0) : array_dup(v->array);
}
