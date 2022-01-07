
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static u_int32_t
round_pow2(u_int32_t v)
{
 u_int32_t ret;

 if (v < 2)
  v = 2;
 ret = 0;
 while (v >> ret)
  ret++;
 ret = 1 << (ret - 1);
 while (ret < v)
  ret <<= 1;
 return ret;
}
