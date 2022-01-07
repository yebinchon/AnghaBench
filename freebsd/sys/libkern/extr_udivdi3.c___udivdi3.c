
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int __qdivrem (int ,int ,int *) ;

u_quad_t
__udivdi3(u_quad_t a, u_quad_t b)
{

 return (__qdivrem(a, b, (u_quad_t *)0));
}
