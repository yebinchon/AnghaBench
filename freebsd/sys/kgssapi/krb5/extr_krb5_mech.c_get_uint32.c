
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
get_uint32(const uint8_t **pp, size_t *lenp)
{
 const uint8_t *p = *pp;
 uint32_t v;

 if (*lenp < 4)
  return (0);

 v = (p[0] << 24) | (p[1] << 16) | (p[2] << 8) | p[3];
 *pp = p + 4;
 *lenp = *lenp - 4;

 return (v);
}
