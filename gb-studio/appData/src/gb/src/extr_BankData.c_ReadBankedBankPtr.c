
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;
typedef unsigned char BANK_PTR ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void ReadBankedBankPtr(UBYTE bank, BANK_PTR *to, unsigned char *from)
{
  BANK_PTR bank_ptr;

  PUSH_BANK(bank);


  memcpy(&bank_ptr, from, sizeof(BANK_PTR));




  POP_BANK;

  memcpy(to, &bank_ptr, sizeof(BANK_PTR));
}
