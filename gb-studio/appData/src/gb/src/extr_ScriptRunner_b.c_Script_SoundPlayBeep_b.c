
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int NR41_REG ;
 int NR42_REG ;
 int NR43_REG ;
 int NR44_REG ;
 int NR50_REG ;
 int NR51_REG ;
 int NR52_REG ;
 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_SoundPlayBeep_b()
{
  UBYTE pitch = script_cmd_args[0];


  NR52_REG = 0x80;


  NR41_REG = 0x01;
  NR42_REG = (0x0F << 4);
  NR43_REG = 0x20 | 0x08 | pitch;
  NR44_REG = 0x80 | 0x40;


  NR50_REG = 0x77;


  NR51_REG |= 0x88;


  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
