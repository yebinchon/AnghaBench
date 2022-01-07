
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;



__attribute__((used)) static u_int32_t
pmod(u_int32_t gen, u_int32_t expo, u_int32_t mod)
{
 u_int64_t s, t, u;

 s = 1;
 t = gen;
 u = expo;

 while (u) {
  if (u & 1)
   s = (s * t) % mod;
  u >>= 1;
  t = (t * t) % mod;
 }
 return (s);
}
