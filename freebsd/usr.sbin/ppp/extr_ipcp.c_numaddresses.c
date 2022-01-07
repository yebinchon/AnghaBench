
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;


 int ntohl (int ) ;

__attribute__((used)) static int
numaddresses(struct in_addr mask)
{
  u_int32_t bit, haddr;
  int n;

  haddr = ntohl(mask.s_addr);
  bit = 1;
  n = 1;

  do {
    if (!(haddr & bit))
      n <<= 1;
  } while (bit <<= 1);

  return n;
}
