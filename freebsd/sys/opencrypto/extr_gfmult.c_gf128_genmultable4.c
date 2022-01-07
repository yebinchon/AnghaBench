
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128table4 {int * tbls; } ;
struct gf128 {int dummy; } ;


 int gf128_genmultable (struct gf128,int *) ;
 struct gf128 gf128_mul (struct gf128,int *) ;

void
gf128_genmultable4(struct gf128 h, struct gf128table4 *t)
{
 struct gf128 h2, h3, h4;

 gf128_genmultable(h, &t->tbls[0]);

 h2 = gf128_mul(h, &t->tbls[0]);

 gf128_genmultable(h2, &t->tbls[1]);

 h3 = gf128_mul(h, &t->tbls[1]);
 gf128_genmultable(h3, &t->tbls[2]);

 h4 = gf128_mul(h2, &t->tbls[1]);
 gf128_genmultable(h4, &t->tbls[3]);
}
