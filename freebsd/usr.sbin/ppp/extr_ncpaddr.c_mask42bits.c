
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;


 int ntohl (int ) ;

__attribute__((used)) static int
mask42bits(struct in_addr mask)
{
  u_int32_t msk = ntohl(mask.s_addr);
  u_int32_t tst;
  int ret;

  for (ret = 32, tst = 1; tst; ret--, tst <<= 1)
    if (msk & tst)
      break;

  for (tst <<= 1; tst; tst <<= 1)
    if (!(msk & tst))
      break;

  return tst ? -1 : ret;
}
