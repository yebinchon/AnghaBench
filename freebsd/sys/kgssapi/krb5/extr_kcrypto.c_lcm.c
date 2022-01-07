
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t gcd (size_t,size_t) ;

__attribute__((used)) static size_t
lcm(size_t a, size_t b)
{
 return ((a * b) / gcd(a, b));
}
