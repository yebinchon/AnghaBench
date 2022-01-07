
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;


 void* TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 void* script_continue ;
 int script_ptr ;
 void** script_variables ;

void Script_SetFlag_b()
{
  UWORD ptr = (script_cmd_args[0] * 256) + script_cmd_args[1];
  script_variables[ptr] = TRUE;
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
