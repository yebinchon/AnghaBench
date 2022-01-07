
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int DATA_PTRS_BANK ;
 int POP_BANK ;
 int PUSH_BANK (size_t) ;
 size_t ReadBankedUBYTE (int ,int *) ;
 size_t current_index ;
 int gbt_loop (size_t) ;
 int gbt_play (int ,size_t,int) ;
 int * music_banks ;
 int * music_tracks ;

void MusicPlay(UBYTE index, UBYTE loop, UBYTE return_bank)
{
  UBYTE music_bank;

  if (index != current_index)
  {
    current_index = index;
    music_bank = ReadBankedUBYTE(DATA_PTRS_BANK, &music_banks[index]);

    PUSH_BANK(return_bank);
    gbt_play(music_tracks[index], music_bank, 7);
    gbt_loop(loop);

    POP_BANK;
  }
}
