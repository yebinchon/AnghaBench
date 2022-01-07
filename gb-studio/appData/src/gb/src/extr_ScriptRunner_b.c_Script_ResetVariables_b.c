
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UWORD ;


 int FALSE ;
 size_t NUM_VARIABLES ;
 int TRUE ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;
 int * script_variables ;

void Script_ResetVariables_b()
{
  UWORD i;
  for (i = 0; i != NUM_VARIABLES; ++i)
  {
    script_variables[i] = FALSE;
  }
  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
