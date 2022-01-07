
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int gcd (int,int) ;

__attribute__((used)) static u_int
lcm(u_int a, u_int b)
{

 return ((a * b) / gcd(a, b));
}
