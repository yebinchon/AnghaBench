
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct number {int scale; int * number; } ;
struct TYPE_2__ {int scale; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add (int *,int *,int *) ;
 int * BN_copy (int *,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 int * BN_dup (int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_is_negative (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_rshift (int *,int *,int) ;
 int BN_rshift1 (int *,int *) ;
 TYPE_1__ bmachine ;
 struct number* bmalloc (int) ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 scalar_t__ bsqrt_stop (int *,int *,int*) ;
 int free_number (struct number*) ;
 int max (int ,int) ;
 struct number* new_number () ;
 int normalize (struct number*,int) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;
 int warnx (char*) ;

__attribute__((used)) static void
bsqrt(void)
{
 struct number *n, *r;
 BIGNUM *x, *y;
 BN_CTX *ctx;
 u_int onecount, scale;

 onecount = 0;
 n = pop_number();
 if (n == ((void*)0))
  return;
 if (BN_is_zero(n->number)) {
  r = new_number();
  push_number(r);
 } else if (BN_is_negative(n->number))
  warnx("square root of negative number");
 else {
  scale = max(bmachine.scale, n->scale);
  normalize(n, 2*scale);
  x = BN_dup(n->number);
  bn_checkp(x);
  bn_check(BN_rshift(x, x, BN_num_bits(x)/2));
  y = BN_new();
  bn_checkp(y);
  ctx = BN_CTX_new();
  bn_checkp(ctx);
  for (;;) {
   bn_checkp(BN_copy(y, x));
   bn_check(BN_div(x, ((void*)0), n->number, x, ctx));
   bn_check(BN_add(x, x, y));
   bn_check(BN_rshift1(x, x));
   if (bsqrt_stop(x, y, &onecount))
    break;
  }
  r = bmalloc(sizeof(*r));
  r->scale = scale;
  r->number = y;
  BN_free(x);
  BN_CTX_free(ctx);
  push_number(r);
 }

 free_number(n);
}
