
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int DISABLE_RAM ;
 int ENABLE_RAM ;
 int FALSE ;
 int * RAMPtr ;
 scalar_t__ RAM_START_PTR ;
 int TRUE ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_ClearData_b()
{
  ENABLE_RAM;
  RAMPtr = (UBYTE *)RAM_START_PTR;
  RAMPtr[0] = FALSE;
  DISABLE_RAM;

  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
