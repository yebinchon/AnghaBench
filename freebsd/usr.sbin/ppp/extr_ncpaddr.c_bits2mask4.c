
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;


 int htonl (int) ;

__attribute__((used)) static struct in_addr
bits2mask4(int bits)
{
  struct in_addr result;
  u_int32_t bit = 0x80000000;

  result.s_addr = 0;

  while (bits) {
    result.s_addr |= bit;
    bit >>= 1;
    bits--;
  }

  result.s_addr = htonl(result.s_addr);
  return result;
}
