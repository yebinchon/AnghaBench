
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct in6_addr {int* s6_addr; } ;


 int memset (struct in6_addr*,char,int) ;

__attribute__((used)) static struct in6_addr
bits2mask6(int bits)
{
  struct in6_addr result;
  u_int32_t bit = 0x80;
  u_char *c = result.s6_addr;

  memset(&result, '\0', sizeof result);

  while (bits) {
    if (bit == 0) {
      bit = 0x80;
      c++;
    }
    *c |= bit;
    bit >>= 1;
    bits--;
  }

  return result;
}
