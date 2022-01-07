
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;
 int * script_stack ;
 size_t script_stack_ptr ;
 int script_start_ptr ;
 int * script_start_stack ;

void Script_StackPush_b()
{
  script_stack[script_stack_ptr] = script_ptr;
  script_start_stack[script_stack_ptr] = script_start_ptr;
  script_stack[script_stack_ptr] += 1 + script_cmd_args_len;
  script_stack_ptr++;
}
