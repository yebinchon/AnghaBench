
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128table4 {int dummy; } ;
struct gf128 {int * v; } ;


 struct gf128 MAKE_GF128 (int ,int ) ;
 struct gf128 gfmultword4 (int ,int ,int ,int ,struct gf128,struct gf128table4*) ;

struct gf128
gf128_mul4(struct gf128 a, struct gf128 b, struct gf128 c, struct gf128 d,
    struct gf128table4 *tbl)
{
 struct gf128 tmp;

 tmp = MAKE_GF128(0, 0);

 tmp = gfmultword4(a.v[1], b.v[1], c.v[1], d.v[1], tmp, tbl);
 tmp = gfmultword4(a.v[0], b.v[0], c.v[0], d.v[0], tmp, tbl);

 return tmp;
}
