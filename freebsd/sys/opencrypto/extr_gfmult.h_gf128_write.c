
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct gf128 {int * v; } ;


 int be64enc (int *,int ) ;

__attribute__((used)) static inline void
gf128_write(struct gf128 v, uint8_t *buf)
{
 uint64_t tmp;

 be64enc(buf, v.v[0]);
 buf += sizeof tmp;

 be64enc(buf, v.v[1]);
}
