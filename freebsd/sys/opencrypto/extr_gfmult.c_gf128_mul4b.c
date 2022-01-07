
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gf128table4 {int dummy; } ;
struct gf128 {int * v; } ;


 struct gf128 MAKE_GF128 (int ,int ) ;
 struct gf128 gf128_add (struct gf128,struct gf128) ;
 struct gf128 gf128_read (int const*) ;
 struct gf128 gfmultword4 (int ,int ,int ,int ,struct gf128,struct gf128table4*) ;

struct gf128
gf128_mul4b(struct gf128 r, const uint8_t *v, struct gf128table4 *tbl)
{
 struct gf128 a, b, c, d;
 struct gf128 tmp;

 tmp = MAKE_GF128(0, 0);

 a = gf128_add(r, gf128_read(&v[0*16]));
 b = gf128_read(&v[1*16]);
 c = gf128_read(&v[2*16]);
 d = gf128_read(&v[3*16]);

 tmp = gfmultword4(a.v[1], b.v[1], c.v[1], d.v[1], tmp, tbl);
 tmp = gfmultword4(a.v[0], b.v[0], c.v[0], d.v[0], tmp, tbl);

 return tmp;
}
