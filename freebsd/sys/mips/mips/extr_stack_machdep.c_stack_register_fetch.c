
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_register_t ;



__attribute__((used)) static u_register_t
stack_register_fetch(u_register_t sp, u_register_t stack_pos)
{
 u_register_t * stack =
     ((u_register_t *)(intptr_t)sp + (size_t)stack_pos/sizeof(u_register_t));

 return *stack;
}
