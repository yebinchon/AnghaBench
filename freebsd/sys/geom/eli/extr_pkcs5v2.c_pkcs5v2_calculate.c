
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int pkcs5v2_probe (int) ;

int
pkcs5v2_calculate(int usecs)
{
 int iterations, v;

 for (iterations = 1; ; iterations <<= 1) {
  v = pkcs5v2_probe(iterations);
  if (v > 2000000)
   break;
 }
 return (((intmax_t)iterations * (intmax_t)usecs) / v);
}
