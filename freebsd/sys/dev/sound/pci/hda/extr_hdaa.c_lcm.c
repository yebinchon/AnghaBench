
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gcd (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned
lcm(unsigned a, unsigned b)
{

 return ((a * b) / gcd(a, b));
}
