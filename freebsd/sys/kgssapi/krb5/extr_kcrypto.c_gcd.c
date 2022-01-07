
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
gcd(size_t a, size_t b)
{

 if (b == 0)
  return (a);
 return gcd(b, a % b);
}
