
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;
typedef int BIGNUM ;



__attribute__((used)) static BN_ULONG
BN_div_word(BIGNUM *a, BN_ULONG b)
{
 BN_ULONG mod;

 mod = *a % b;
 *a /= b;
 return mod;
}
