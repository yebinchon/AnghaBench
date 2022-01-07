
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int * BN_lebin2bn (void const*,int,int *) ;
 int ERR_print_errors_fp (int ) ;
 int stderr ;

__attribute__((used)) static BIGNUM *
le_to_bignum(BIGNUM *res, const void *p, int plen)
{

 res = BN_lebin2bn(p, plen, res);
 if (res == ((void*)0))
  ERR_print_errors_fp(stderr);

 return (res);
}
