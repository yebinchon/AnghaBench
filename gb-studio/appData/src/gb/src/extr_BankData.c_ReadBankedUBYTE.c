
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int POP_BANK ;
 int PUSH_BANK (int ) ;

UBYTE ReadBankedUBYTE(UBYTE bank, unsigned char *ptr)
{
  UBYTE value;
  PUSH_BANK(bank);
  value = *(UBYTE *)ptr;
  POP_BANK;
  return value;
}
