
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comp_t ;


 double AHZV1 ;

__attribute__((used)) static float
decode_comp(comp_t v)
{
 int result, exp;

 result = v & 017777;
 for (exp = v >> 13; exp; exp--)
  result <<= 3;
 return ((double)result / AHZV1);
}
