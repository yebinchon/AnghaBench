
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static u_int
gcd(u_int a, u_int b)
{
 u_int c;

 while (b != 0) {
  c = a;
  a = b;
  b = (c % b);
 }
 return (a);
}
