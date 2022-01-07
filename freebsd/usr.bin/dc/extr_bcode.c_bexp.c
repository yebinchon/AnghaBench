
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int ;
struct number {scalar_t__ scale; int * number; } ;
struct TYPE_2__ {int scale; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_div (int *,int *,int *,int *,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_get_word (int *) ;
 scalar_t__ BN_is_bit_set (int *,int ) ;
 scalar_t__ BN_is_negative (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_one (int *) ;
 int BN_rshift1 (int *,int *) ;
 scalar_t__ UINT_MAX ;
 scalar_t__ ULONG_MAX ;
 TYPE_1__ bmachine ;
 int bmul_number (struct number*,struct number*,struct number*,int) ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 struct number* dup_number (struct number*) ;
 int free_number (struct number*) ;
 int max (scalar_t__,int) ;
 int negate (struct number*) ;
 struct number* new_number () ;
 int normalize (struct number*,int) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;
 int scale_number (int *,int) ;
 int split_number (struct number*,int *,int *) ;
 int warnx (char*) ;

__attribute__((used)) static void
bexp(void)
{
 struct number *a, *p;
 struct number *r;
 bool neg;
 u_int rscale;

 p = pop_number();
 if (p == ((void*)0))
  return;
 a = pop_number();
 if (a == ((void*)0)) {
  push_number(p);
  return;
 }

 if (p->scale != 0) {
  BIGNUM *i, *f;
  i = BN_new();
  bn_checkp(i);
  f = BN_new();
  bn_checkp(f);
  split_number(p, i, f);
  if (!BN_is_zero(f))
   warnx("Runtime warning: non-zero fractional part in exponent");
  BN_free(i);
  BN_free(f);
 }

 normalize(p, 0);

 neg = 0;
 if (BN_is_negative(p->number)) {
  neg = 1;
  negate(p);
  rscale = bmachine.scale;
 } else {

  u_long b;
  u_int m;

  b = BN_get_word(p->number);
  m = max(a->scale, bmachine.scale);
  rscale = a->scale * (u_int)b;
  if (rscale > m || (a->scale > 0 && (b == ULONG_MAX ||
      b > UINT_MAX)))
   rscale = m;
 }

 if (BN_is_zero(p->number)) {
  r = new_number();
  bn_check(BN_one(r->number));
  normalize(r, rscale);
 } else {
  u_int ascale, mscale;

  ascale = a->scale;
  while (!BN_is_bit_set(p->number, 0)) {
   ascale *= 2;
   bmul_number(a, a, a, ascale);
   bn_check(BN_rshift1(p->number, p->number));
  }

  r = dup_number(a);
  bn_check(BN_rshift1(p->number, p->number));

  mscale = ascale;
  while (!BN_is_zero(p->number)) {
   ascale *= 2;
   bmul_number(a, a, a, ascale);
   if (BN_is_bit_set(p->number, 0)) {
    mscale += ascale;
    bmul_number(r, r, a, mscale);
   }
   bn_check(BN_rshift1(p->number, p->number));
  }

  if (neg) {
   BN_CTX *ctx;
   BIGNUM *one;

   one = BN_new();
   bn_checkp(one);
   bn_check(BN_one(one));
   ctx = BN_CTX_new();
   bn_checkp(ctx);
   scale_number(one, r->scale + rscale);

   if (BN_is_zero(r->number))
    warnx("divide by zero");
   else
    bn_check(BN_div(r->number, ((void*)0), one,
        r->number, ctx));
   BN_free(one);
   BN_CTX_free(ctx);
   r->scale = rscale;
  } else
   normalize(r, rscale);
 }
 push_number(r);
 free_number(a);
 free_number(p);
}
