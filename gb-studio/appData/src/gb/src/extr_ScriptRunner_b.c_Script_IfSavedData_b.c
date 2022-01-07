
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int DISABLE_RAM ;
 int ENABLE_RAM ;
 scalar_t__* RAMPtr ;
 scalar_t__ RAM_START_PTR ;
 scalar_t__ TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 scalar_t__ script_ptr ;
 scalar_t__ script_start_ptr ;

void Script_IfSavedData_b()
{
  UBYTE jump;

  ENABLE_RAM;
  RAMPtr = (UBYTE *)RAM_START_PTR;
  jump = 0;
  jump = *RAMPtr == TRUE;
  DISABLE_RAM;

  if (jump)
  {
    script_ptr = script_start_ptr + (script_cmd_args[0] * 256) + script_cmd_args[1];
  }
  else
  {
    script_ptr += 1 + script_cmd_args_len;
  }
}
