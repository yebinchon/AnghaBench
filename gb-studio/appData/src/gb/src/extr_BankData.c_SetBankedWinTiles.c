
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int set_win_tiles (int ,int ,int ,int ,unsigned char*) ;

void SetBankedWinTiles(UBYTE bank, UBYTE x, UBYTE y, UBYTE w, UBYTE h,
                       unsigned char *ptr)
{
  PUSH_BANK(bank);
  set_win_tiles(x, y, w, h, ptr);
  POP_BANK;
}
