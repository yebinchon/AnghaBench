
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 scalar_t__ BN_is_one (int *) ;
 int BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_sub (int *,int const*,int const*) ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;

__attribute__((used)) static bool
bsqrt_stop(const BIGNUM *x, const BIGNUM *y, u_int *onecount)
{
 BIGNUM *r;
 bool ret;

 r = BN_new();
 bn_checkp(r);
 bn_check(BN_sub(r, x, y));
 if (BN_is_one(r))
  (*onecount)++;
 ret = BN_is_zero(r);
 BN_free(r);
 return (ret || *onecount > 1);
}
