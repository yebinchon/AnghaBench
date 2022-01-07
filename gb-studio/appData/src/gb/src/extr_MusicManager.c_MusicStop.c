
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int MAX_MUSIC ;
 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int current_index ;
 int gbt_stop () ;

void MusicStop(UBYTE return_bank)
{
  PUSH_BANK(return_bank);
  gbt_stop();
  current_index = MAX_MUSIC;
  POP_BANK;
}
