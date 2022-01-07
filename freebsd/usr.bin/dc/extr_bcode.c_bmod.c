
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct number {int number; int scale; } ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 scalar_t__ BN_is_zero (int ) ;
 int BN_mod (int ,int ,int ,int *) ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 int free_number (struct number*) ;
 int max (int ,int ) ;
 struct number* new_number () ;
 int normalize (struct number*,int ) ;
 struct number* pop_number () ;
 int push_number (struct number*) ;
 int warnx (char*) ;

__attribute__((used)) static void
bmod(void)
{
 struct number *a, *b, *r;
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

 r = new_number();
 scale = max(a->scale, b->scale);
 r->scale = scale;

 if (BN_is_zero(a->number))
  warnx("remainder by zero");
 else {
  normalize(a, scale);
  normalize(b, scale);

  ctx = BN_CTX_new();
  bn_checkp(ctx);
  bn_check(BN_mod(r->number, b->number, a->number, ctx));
  BN_CTX_free(ctx);
 }
 push_number(r);
 free_number(a);
 free_number(b);
}
