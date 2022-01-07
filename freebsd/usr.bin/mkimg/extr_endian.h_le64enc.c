
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int le32enc (int *,int ) ;

__attribute__((used)) static __inline void
le64enc(void *pp, uint64_t u)
{
 uint8_t *p = (uint8_t *)pp;

 le32enc(p, (uint32_t)(u & 0xffffffffU));
 le32enc(p + 4, (uint32_t)(u >> 32));
}
