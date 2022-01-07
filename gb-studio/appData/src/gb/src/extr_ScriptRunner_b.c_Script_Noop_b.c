
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ script_cmd_args_len ;
 int script_ptr ;

void Script_Noop_b()
{
  script_ptr += 1 + script_cmd_args_len;
}
