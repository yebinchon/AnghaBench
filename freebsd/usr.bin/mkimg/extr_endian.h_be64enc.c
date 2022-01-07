
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int be32enc (int *,int ) ;

__attribute__((used)) static __inline void
be64enc(void *pp, uint64_t u)
{
 uint8_t *p = (uint8_t *)pp;

 be32enc(p, (uint32_t)(u >> 32));
 be32enc(p + 4, (uint32_t)(u & 0xffffffffU));
}
