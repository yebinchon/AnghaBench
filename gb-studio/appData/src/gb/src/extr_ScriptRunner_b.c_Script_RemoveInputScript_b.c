
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ bank; } ;


 int TRUE ;
 TYPE_1__* input_script_ptrs ;
 int script_action_complete ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_RemoveInputScript_b()
{
  UBYTE input, index;

  input = script_cmd_args[0];

  index = 0;
  for (index = 0; index != 8; ++index)
  {
    if (input & 1)
    {
      input_script_ptrs[index].bank = 0;
    }
    input = input >> 1;
  }

  script_action_complete = TRUE;
  script_ptr += 1 + script_cmd_args_len;
}
