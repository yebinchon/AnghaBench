
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int TRUE ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 size_t script_ptr_x ;
 size_t script_ptr_y ;
 int * script_variables ;

void Script_CopyVal_b()
{
  UBYTE value = script_variables[script_ptr_y];
  script_variables[script_ptr_x] = value;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
