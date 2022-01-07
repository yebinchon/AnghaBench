
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct gf128 {void** v; } ;


 void* be64dec (int const*) ;

__attribute__((used)) static inline struct gf128
gf128_read(const uint8_t *buf)
{
 struct gf128 r;

 r.v[0] = be64dec(buf);
 buf += sizeof(uint64_t);

 r.v[1] = be64dec(buf);

 return r;
}
