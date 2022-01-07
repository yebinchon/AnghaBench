
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct number {int number; scalar_t__ scale; } ;
struct TYPE_2__ {scalar_t__ scale; } ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add (int ,int ,int ) ;
 int BN_div (int ,int ,int ,int ,int *) ;
 scalar_t__ BN_is_zero (int ) ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 struct number* div_number (struct number*,struct number*,scalar_t__) ;
 int free_number (struct number*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 struct number* new_number () ;
 int normalize (struct number*,scalar_t__) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;
 int warnx (char*) ;

__attribute__((used)) static void
bdivmod(void)
{
 struct number *a, *b, *frac, *quotient, *rdiv, *remainder;
 BN_CTX *ctx;
 u_int scale;

 a = pop_number();
 if (a == ((void*)0))
  return;
 b = pop_number();
 if (b == ((void*)0)) {
  push_number(a);
  return;
 }

 rdiv = new_number();
 quotient = new_number();
 remainder = new_number();
 scale = max(a->scale, b->scale);
 rdiv->scale = 0;
 remainder->scale = scale;
 quotient->scale = bmachine.scale;
 scale = max(a->scale, b->scale);

 if (BN_is_zero(a->number))
  warnx("divide by zero");
 else {
  normalize(a, scale);
  normalize(b, scale);

  ctx = BN_CTX_new();
  bn_checkp(ctx);
  bn_check(BN_div(rdiv->number, remainder->number,
      b->number, a->number, ctx));
  frac = div_number(remainder, a, bmachine.scale);
  normalize(rdiv, bmachine.scale);
  normalize(remainder, scale);
  bn_check(BN_add(quotient->number, rdiv->number, frac->number));
  free_number(frac);
  BN_CTX_free(ctx);
 }
 push_number(quotient);
 push_number(remainder);
 free_number(rdiv);
 free_number(a);
 free_number(b);
}
