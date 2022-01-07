
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct number {int number; scalar_t__ scale; } ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_div (int ,int *,int ,int ,int *) ;
 scalar_t__ BN_is_zero (int ) ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 struct number* new_number () ;
 int normalize (struct number*,scalar_t__) ;
 int warnx (char*) ;

struct number *
div_number(struct number *dividend, struct number *divisor, u_int bscale)
{
 struct number *quotient;
 BN_CTX *ctx;
 u_int scale;

 quotient = new_number();
 quotient->scale = bscale;
 scale = max(divisor->scale, dividend->scale);

 if (BN_is_zero(divisor->number))
  warnx("divide by zero");
 else {
  normalize(divisor, scale);
  normalize(dividend, scale + quotient->scale);

  ctx = BN_CTX_new();
  bn_checkp(ctx);
  bn_check(BN_div(quotient->number, ((void*)0), dividend->number,
    divisor->number, ctx));
  BN_CTX_free(ctx);
 }
 return (quotient);
}
