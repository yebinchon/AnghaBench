
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128table {int* a; int* b; int* c; int* d; } ;
struct gf128 {int* v; } ;


 struct gf128 MAKE_GF128 (int ,int ) ;
 struct gf128 gf128_add (struct gf128,struct gf128) ;
 struct gf128 gf128_mulalpha (struct gf128) ;
 size_t* nib_rev ;

void
gf128_genmultable(struct gf128 h, struct gf128table *t)
{
 struct gf128 tbl[16];
 int i;

 tbl[0] = MAKE_GF128(0, 0);
 tbl[1] = h;

 for (i = 2; i < 16; i += 2) {
  tbl[i] = gf128_mulalpha(tbl[i / 2]);
  tbl[i + 1] = gf128_add(tbl[i], h);
 }

 for (i = 0; i < 16; i++) {
  t->a[nib_rev[i]] = tbl[i].v[0] >> 32;
  t->b[nib_rev[i]] = tbl[i].v[0];
  t->c[nib_rev[i]] = tbl[i].v[1] >> 32;
  t->d[nib_rev[i]] = tbl[i].v[1];
 }
}
