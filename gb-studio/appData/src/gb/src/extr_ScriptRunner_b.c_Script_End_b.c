
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ script_ptr ;
 scalar_t__ script_ptr_bank ;

void Script_End_b()
{
  script_ptr_bank = 0;
  script_ptr = 0;
}
