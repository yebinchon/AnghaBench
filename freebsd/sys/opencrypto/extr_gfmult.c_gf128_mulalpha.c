
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gf128 {int* v; } ;


 int REV_POLY_REDUCT ;

__attribute__((used)) static inline struct gf128
gf128_mulalpha(struct gf128 v)
{
 uint64_t mask;

 mask = !!(v.v[1] & 1);
 mask = ~(mask - 1);
 v.v[1] = (v.v[1] >> 1) | ((v.v[0] & 1) << 63);
 v.v[0] = (v.v[0] >> 1) ^ ((mask & REV_POLY_REDUCT) << 56);

 return v;
}
