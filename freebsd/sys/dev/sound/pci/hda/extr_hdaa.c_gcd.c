
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int ;



__attribute__((used)) static unsigned
gcd(unsigned a, unsigned b)
{
 u_int c;

 while (b != 0) {
  c = a;
  a = b;
  b = (c % b);
 }
 return (a);
}
