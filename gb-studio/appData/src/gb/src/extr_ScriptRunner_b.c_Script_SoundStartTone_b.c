
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int NR10_REG ;
 int NR11_REG ;
 int NR12_REG ;
 int NR13_REG ;
 int NR14_REG ;
 int NR50_REG ;
 int NR51_REG ;
 int NR52_REG ;
 int TRUE ;
 int* script_cmd_args ;
 scalar_t__ script_cmd_args_len ;
 int script_continue ;
 int script_ptr ;

void Script_SoundStartTone_b()
{
  UWORD tone = (script_cmd_args[0] * 256) + script_cmd_args[1];


  NR52_REG = 0x80;


  NR10_REG = 0x00;
  NR11_REG = (0x00 << 6) | 0x01;
  NR12_REG = (0x0F << 4) | 0x00;
  NR13_REG = (tone & 0x00FF);
  NR14_REG = 0x80 | ((tone & 0x0700) >> 8);


  NR50_REG = 0x77;


  NR51_REG |= 0x11;

  script_ptr += 1 + script_cmd_args_len;
  script_continue = TRUE;
}
