
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int) ;

UWORD ReadBankedUWORD(UBYTE bank, unsigned char *ptr)
{
  UWORD value;
  UBYTE hi, lo;
  PUSH_BANK(bank);
  hi = *(UBYTE *)ptr;
  lo = *(UBYTE *)(ptr + 1);
  value = (hi * 0xFFu) + lo;
  POP_BANK;
  return value;
}
