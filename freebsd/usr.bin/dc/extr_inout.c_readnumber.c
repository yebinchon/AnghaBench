
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct source {TYPE_1__* vtable; } ;
struct number {int scale; int * number; } ;
struct TYPE_2__ {int (* readchar ) (struct source*) ;int (* unreadchar ) (struct source*) ;} ;
typedef int BN_ULONG ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_add_word (int *,int) ;
 int BN_exp (int *,int *,int *,int *) ;
 int BN_free (int *) ;
 scalar_t__ BN_mod_word (int *,int) ;
 int BN_mul_word (int *,int) ;
 int * BN_new () ;
 int BN_zero (int *) ;
 int EOF ;
 int bn_check (int ) ;
 struct number* div_number (struct number*,struct number*,int) ;
 int free_number (struct number*) ;
 int negate (struct number*) ;
 struct number* new_number () ;
 int normalize (struct number*,scalar_t__) ;
 int stub1 (struct source*) ;
 int stub2 (struct source*) ;

struct number *
readnumber(struct source *src, u_int base, u_int bscale)
{
 struct number *n;
 BN_ULONG v;
 int ch;
 u_int iscale = 0;
 bool dot = 0, sign = 0;

 n = new_number();
 bn_check(BN_zero(n->number));

 while ((ch = (*src->vtable->readchar)(src)) != EOF) {

  if ('0' <= ch && ch <= '9')
   v = ch - '0';
  else if ('A' <= ch && ch <= 'F')
   v = ch - 'A' + 10;
  else if (ch == '_') {
   sign = 1;
   continue;
  } else if (ch == '.') {
   if (dot)
    break;
   dot = 1;
   continue;
  } else {
   (*src->vtable->unreadchar)(src);
   break;
  }
  if (dot)
   iscale++;

  bn_check(BN_mul_word(n->number, base));
  bn_check(BN_add_word(n->number, v));
 }
 if (base == 10) {
  n->scale = iscale;
 } else {

  struct number *quotient, *divisor, *_n;
  BIGNUM *base_n, *exponent;
  BN_CTX *ctx;

  ctx = BN_CTX_new();
  base_n = BN_new();
  exponent = BN_new();
  divisor = new_number();
  bn_check(BN_zero(base_n));
  bn_check(BN_zero(exponent));

  bn_check(BN_add_word(base_n, base));
  bn_check(BN_add_word(exponent, iscale));
  bn_check(BN_exp(divisor->number, base_n, exponent, ctx));
  divisor->scale = 0;
  quotient = div_number(n, divisor, bscale);
  _n = n;
  n = quotient;





  while ( n->scale > 0 &&
   BN_mod_word(n->number, 10) == 0) {
   normalize(n, n->scale - 1);
  }

  free_number(_n);
  free_number(divisor);
  BN_CTX_free(ctx);
  BN_free(base_n);
  BN_free(exponent);
 }
 if (sign)
  negate(n);
 return (n);
}
