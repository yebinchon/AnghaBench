
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct number {scalar_t__ scale; int number; } ;
struct TYPE_2__ {scalar_t__ scale; } ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_mul (int ,int ,int ,int *) ;
 TYPE_1__ bmachine ;
 int bn_check (int ) ;
 int bn_checkp (int *) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int normalize (struct number*,scalar_t__) ;

void
bmul_number(struct number *r, struct number *a, struct number *b, u_int scale)
{
 BN_CTX *ctx;


 u_int ascale = a->scale;
 u_int bscale = b->scale;
 u_int rscale = ascale + bscale;

 ctx = BN_CTX_new();
 bn_checkp(ctx);
 bn_check(BN_mul(r->number, a->number, b->number, ctx));
 BN_CTX_free(ctx);

 r->scale = rscale;
 if (rscale > bmachine.scale && rscale > ascale && rscale > bscale)
  normalize(r, max(scale, max(ascale, bscale)));
}
