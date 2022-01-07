
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_free (int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_pseudo_rand (int *,int,int ,int ) ;
 int UB_mod_exp (int *,int *,int *,int *) ;
 int show_result (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
testit(void)
{
 BIGNUM *a, *b, *c, *r1, *r2;
 BN_CTX *ctx;

 ctx = BN_CTX_new();

 a = BN_new();
 b = BN_new();
 c = BN_new();
 r1 = BN_new();
 r2 = BN_new();

 BN_pseudo_rand(a, 1023, 0, 0);
 BN_pseudo_rand(b, 1023, 0, 0);
 BN_pseudo_rand(c, 1024, 0, 0);

 if (BN_cmp(a, c) > 0) {
  BIGNUM *rem = BN_new();

  BN_mod(rem, a, c, ctx);
  UB_mod_exp(r2, rem, b, c);
  BN_free(rem);
 } else {
  UB_mod_exp(r2, a, b, c);
 }
 BN_mod_exp(r1, a, b, c, ctx);

 if (BN_cmp(r1, r2) != 0) {
  show_result(a, b, c, r1, r2);
 }

 BN_free(r2);
 BN_free(r1);
 BN_free(c);
 BN_free(b);
 BN_free(a);
 BN_CTX_free(ctx);
}
