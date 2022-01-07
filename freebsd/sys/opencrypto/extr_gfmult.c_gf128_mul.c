
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128table {int dummy; } ;
struct gf128 {int * v; } ;


 struct gf128 MAKE_GF128 (int ,int ) ;
 struct gf128 gfmultword (int ,struct gf128,struct gf128table*) ;

struct gf128
gf128_mul(struct gf128 v, struct gf128table *tbl)
{
 struct gf128 ret;

 ret = MAKE_GF128(0, 0);

 ret = gfmultword(v.v[1], ret, tbl);
 ret = gfmultword(v.v[0], ret, tbl);

 return ret;
}
