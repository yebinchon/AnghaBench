
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union uu {scalar_t__ q; scalar_t__* ul; } ;
typedef scalar_t__ u_int ;
typedef scalar_t__ quad_t ;


 size_t H ;
 scalar_t__ HHALF (scalar_t__) ;
 size_t L ;
 scalar_t__ LHALF (scalar_t__) ;
 scalar_t__ LHUP (scalar_t__) ;

__attribute__((used)) static quad_t
__lmulq(u_int u, u_int v)
{
 u_int u1, u0, v1, v0, udiff, vdiff, high, mid, low;
 u_int prodh, prodl, was;
 union uu prod;
 int neg;

 u1 = HHALF(u);
 u0 = LHALF(u);
 v1 = HHALF(v);
 v0 = LHALF(v);

 low = u0 * v0;


 if (u1 == 0 && v1 == 0)
  return (low);

 if (u1 >= u0)
  udiff = u1 - u0, neg = 0;
 else
  udiff = u0 - u1, neg = 1;
 if (v0 >= v1)
  vdiff = v0 - v1;
 else
  vdiff = v1 - v0, neg ^= 1;
 mid = udiff * vdiff;

 high = u1 * v1;


 prodh = high + HHALF(high);
 prodl = LHUP(high);


 if (neg) {
  was = prodl;
  prodl -= LHUP(mid);
  prodh -= HHALF(mid) + (prodl > was);
 } else {
  was = prodl;
  prodl += LHUP(mid);
  prodh += HHALF(mid) + (prodl < was);
 }


 was = prodl;
 prodl += LHUP(low);
 prodh += HHALF(low) + (prodl < was);

 if ((prodl += low) < low)
  prodh++;


 prod.ul[H] = prodh;
 prod.ul[L] = prodl;
 return (prod.q);
}
