
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int CHN_2NDBUFMAXSIZE ;
 int min (int ,int) ;
 int round_pow2 (int) ;

__attribute__((used)) static u_int32_t
round_blksz(u_int32_t v, int round)
{
 u_int32_t ret, tmp;

 if (round < 1)
  round = 1;

 ret = min(round_pow2(v), CHN_2NDBUFMAXSIZE >> 1);

 if (ret > v && (ret >> 1) > 0 && (ret >> 1) >= ((v * 3) >> 2))
  ret >>= 1;

 tmp = ret - (ret % round);
 while (tmp < 16 || tmp < round) {
  ret <<= 1;
  tmp = ret - (ret % round);
 }

 return ret;
}
