
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;
 int memcpy (unsigned char**,unsigned char*,int ) ;

void ReadBankedUBYTEArray(UBYTE bank, unsigned char *out, unsigned char *ptr, UBYTE size)
{
  PUSH_BANK(bank);

  memcpy(&out, ptr, size);

  POP_BANK;
}
