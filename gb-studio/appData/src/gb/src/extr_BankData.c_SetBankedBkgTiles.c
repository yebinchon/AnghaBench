
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int set_bkg_tiles (int ,int ,int ,int ,unsigned char*) ;

void SetBankedBkgTiles(UBYTE bank, UBYTE x, UBYTE y, UBYTE w, UBYTE h,
                       unsigned char *ptr)
{
  PUSH_BANK(bank);
  set_bkg_tiles(x, y, w, h, ptr);
  POP_BANK;
}
