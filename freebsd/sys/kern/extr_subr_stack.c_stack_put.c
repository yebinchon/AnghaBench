
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct stack {scalar_t__ depth; int * pcs; } ;


 scalar_t__ STACK_MAX ;

int
stack_put(struct stack *st, vm_offset_t pc)
{

 if (st->depth < STACK_MAX) {
  st->pcs[st->depth++] = pc;
  return (0);
 } else
  return (-1);
}
