
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
typedef scalar_t__ quad_t ;


 int __qdivrem (scalar_t__,scalar_t__,scalar_t__*) ;

quad_t
__moddi3(quad_t a, quad_t b)
{
 u_quad_t ua, ub, ur;
 int neg;

 if (a < 0)
  ua = -(u_quad_t)a, neg = 1;
 else
  ua = a, neg = 0;
 if (b < 0)
  ub = -(u_quad_t)b;
 else
  ub = b;
 (void)__qdivrem(ua, ub, &ur);
 return (neg ? -ur : ur);
}
