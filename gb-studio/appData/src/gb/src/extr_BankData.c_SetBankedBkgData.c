
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int set_bkg_data (int ,int ,unsigned char*) ;

void SetBankedBkgData(UBYTE bank, UBYTE i, UBYTE l, unsigned char *ptr)
{
  PUSH_BANK(bank);
  set_bkg_data(i, l, ptr);
  POP_BANK;
}
