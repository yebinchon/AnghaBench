
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint16_t ;



__attribute__((used)) static __inline uint16_t
le16dec(const void *pp)
{
 uint8_t const *p = (uint8_t const *)pp;

 return ((p[1] << 8) | p[0]);
}
