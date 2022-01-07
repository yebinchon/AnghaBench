
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long __divdi3 (long long,long long) ;

long long
__kern_ldivmod(long long n, long long m, long long *rem)
{
 long long q;

 q = __divdi3(n, m);
 *rem = n - m * q;

 return q;
}
